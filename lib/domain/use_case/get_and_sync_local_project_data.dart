import 'package:cross_file/cross_file.dart';
import 'package:flutter/cupertino.dart';
import 'package:mpm/data/entities/project/project_data_entity.dart';
import 'package:mpm/domain/repository/project/project_repository.dart';
import 'package:collection/collection.dart';
import 'package:mpm/domain/use_case/upload_image_to_storage.dart';

class GetAndSyncLocalProjectDataUseCase {
  final ProjectRepository _localRepository;
  final ProjectRepository _apiRepository;
  final UploadImageToStorageUseCase _uploadImageToStorageUseCase;

  GetAndSyncLocalProjectDataUseCase({
    required ProjectRepository localRepository,
    required ProjectRepository apiRepository,
    required UploadImageToStorageUseCase uploadImageToStorageUseCase,
  })  : _localRepository = localRepository,
        _apiRepository = apiRepository,
        _uploadImageToStorageUseCase = uploadImageToStorageUseCase;

  Stream<List<ProjectDataEntity>> call() async* {
    final stream = _localRepository.listenToLocalProjectData();
    await for (final data in stream) {
      yield data;
      _syncProcess(data);
    }
  }

  _syncProcess(List<ProjectDataEntity> currentData) async {
    if (currentData.isEmpty) return;
    final runningItem = currentData.firstWhereOrNull(
        (element) => element.syncStatus == DataSyncStatus.running);
    debugPrint('RUNNING: $runningItem');
    if (runningItem != null) return;
    final pendingItem = currentData.firstWhereOrNull(
        (element) => element.syncStatus == DataSyncStatus.pending);
    final failedItem = currentData.firstWhereOrNull(
        (element) => element.syncStatus == DataSyncStatus.failed);
    debugPrint('PENDING: $pendingItem');
    debugPrint('FAILED: $failedItem');
    if (pendingItem != null) {
      await _storeItem(pendingItem);
      return;
    } else if (failedItem != null) {
      // await _storeItem(failedItem);
      return;
    }
    return;
  }

  _storeItem(ProjectDataEntity item) async {
    final changeStatus = await _localRepository
        .updateProjectData(item.copyWith(syncStatus: DataSyncStatus.running));
    if (changeStatus.isLeft()) return;
    debugPrint("STATUS CHANGED TO RUNNING");

    /// This is the place where the image is not uploaded to the storage
    final findImages = item.images.where(
        (element) => element.path != null && element.preSignedName == null);
    if (findImages.isNotEmpty) {
      for (final image in findImages) {
        ///upload image to storage
        final result = await _uploadImageToStorageUseCase.call(
          image: XFile(image.path!),
        );
        await result.fold(
          (l) async {
            debugPrint("FAILED TO UPLOAD IMAGE");
            await _localRepository.updateProjectData(
                item.copyWith(syncStatus: DataSyncStatus.failed));
            return;
          },
          (preSignName) async {
            debugPrint("IMAGE UPLOADED SUCCESSFULLY $preSignName");
            final updatedImages = item.images
                .map(
                  (e) => e.id == image.id
                      ? e.copyWith(preSignedName: preSignName)
                      : e,
                )
                .toList();
            item = item.copyWith(
              images: updatedImages,
            );

            ///update the local item with the new image
            await _localRepository.updateProjectData(item);
          },
        );
      }
    } else {
      debugPrint("NO IMAGE TO UPLOAD");
    }
    final result = await _apiRepository.storeProjectData(item);
    // final result = ResultData.right("");
    await result.fold(
      (l) async {
        debugPrint("STATUS CHANGED TO FAILED");
        await _localRepository.updateProjectData(
            item.copyWith(syncStatus: DataSyncStatus.failed));
      },
      (r) async {
        debugPrint("STATUS CHANGED TO SYNCED");
        await _localRepository.updateProjectData(
            item.copyWith(syncStatus: DataSyncStatus.synced));
      },
    );
  }
}

class SetTryAgainSyncItemUseCase {
  final ProjectRepository _localRepository;

  SetTryAgainSyncItemUseCase({required ProjectRepository localRepository})
      : _localRepository = localRepository;

  Future<void> call(ProjectDataEntity dataEntity) async {
    await _localRepository.updateProjectData(dataEntity.copyWith(
      syncStatus: DataSyncStatus.pending,
    ));
  }
}
