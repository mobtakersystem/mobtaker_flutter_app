import 'dart:async';

import 'package:cross_file/cross_file.dart';
import 'package:flutter/cupertino.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:mpm/data/entities/project/project_data_entity.dart';
import 'package:mpm/domain/failure_model.dart';
import 'package:mpm/domain/repository/local_handler/locaLhandler_data.dart';
import 'package:mpm/domain/repository/project/project_repository.dart';
import 'package:collection/collection.dart';
import 'package:mpm/domain/use_case/upload_image_to_storage.dart';

class GetAndSyncLocalProjectDataUseCase {
  final ProjectRepository _localRepository;
  final ProjectRepository _apiRepository;
  final UploadImageToStorageUseCase _uploadImageToStorageUseCase;
  final LocalHandlerRepository _localHandlerRepository;
  final InternetConnection _internetConnection;
  StreamSubscription<InternetStatus>? internetListener;
  List<ProjectDataEntity> currentData = [];

  GetAndSyncLocalProjectDataUseCase({
    required ProjectRepository localRepository,
    required ProjectRepository apiRepository,
    required UploadImageToStorageUseCase uploadImageToStorageUseCase,
    required InternetConnection internetConnection,
    required LocalHandlerRepository localHandlerRepository,
  })  : _localRepository = localRepository,
        _apiRepository = apiRepository,
        _uploadImageToStorageUseCase = uploadImageToStorageUseCase,
        _internetConnection = internetConnection,
        _localHandlerRepository = localHandlerRepository;

  Stream<List<ProjectDataEntity>> call() async* {
    final stream = _localRepository.listenToUnSyncProjectData();
    debugPrint("#SYNC START");
    internetListener = _internetConnection.onStatusChange
        .listen((InternetStatus status) async {
      switch (status) {
        case InternetStatus.connected:
          debugPrint("#SYNC INTERNET CONNECTED");
          debugPrint(currentData.length.toString());
          await Future.delayed(const Duration(seconds: 1));
          _syncProcess(currentData);
          break;
        case InternetStatus.disconnected:
          debugPrint("#SYNC INTERNET DISCONNECTED");
          break;
      }
    });

    await for (final data in stream) {
      yield data;
      currentData = data;
      if (await _internetConnection.hasInternetAccess) {
        debugPrint("#SYNC CALL BACK");
        _syncProcess(data);
      } else {
        debugPrint("#SYNC CALL BACK NO INTERNET CONNECTION");
      }
    }
  }

  manualSync() async {
    final localData = await _localRepository.listenToUnSyncProjectData().first;
    debugPrint("#SYNC MANUAL GET DATA");
    if (await _internetConnection.hasInternetAccess) {
      debugPrint("#SYNC MANUAL INTERNET CONNECTED");
      await _syncProcess(localData);
    } else {
      debugPrint("#SYNC MANUAL INTERNET CONNECTION");
    }
  }

  _syncProcess(List<ProjectDataEntity> currentData) async {
    await _localHandlerRepository.setLastRunSync(DateTime.now());
    if (currentData.isEmpty) return;
    final runningItem = currentData.firstWhereOrNull(
        (element) => element.syncStatus == DataSyncStatus.running);
    debugPrint('RUNNING: $runningItem');
    if (runningItem != null) return;
    final pendingItem = currentData.firstWhereOrNull(
        (element) => element.syncStatus == DataSyncStatus.pending);
    final syncedItem = currentData.firstWhereOrNull(
        (element) => element.syncStatus == DataSyncStatus.synced);
    debugPrint('PENDING: $pendingItem');
    debugPrint('SYNCED: $syncedItem');
    if (syncedItem != null) {
      await _deleteItem(syncedItem);
      return;
    } else if (pendingItem != null) {
      await _storeItem(pendingItem);
      return;
    }
    return;
  }

  _deleteItem(ProjectDataEntity item) async {
    await _localRepository.deleteProjectData(item.id);
  }

  _storeItem(ProjectDataEntity item) async {
    try {
      final changeStatus = await _localRepository
          .updateProjectData(item.copyWith(syncStatus: DataSyncStatus.running));
      if (changeStatus.isLeft()) return;

      ///NOTICE: always use copyWith to update the item after each local update
      item = item.copyWith(syncStatus: DataSyncStatus.running);
      debugPrint("STATUS CHANGED TO RUNNING");

      /// This is the place where the image is not uploaded to the storage
      final findImages = item.images.where(
          (element) => element.path != null && element.preSignedName == null);
      if (findImages.isNotEmpty) {
        for (final image in findImages) {
          ///upload image to storage
          final result = await _uploadImage(image.path!, item);
          if (result.isRight()) {
            final updatedImages = item.images
                .map(
                  (e) => e.id == image.id
                      ? e.copyWith(
                          preSignedName: result.getRight().toNullable())
                      : e,
                )
                .toList();
            item = item.copyWith(
              images: updatedImages,
            );

            ///update the local item with the new image
            await _localRepository.updateProjectData(item);
          } else {
            return;
          }
        }
      } else {
        debugPrint("NO IMAGE TO UPLOAD");
      }

      ///upload machinery work hour image
      if (item.localMachineryWorkingHourImage != null &&
          item.localMachineryWorkingHourImage!.path != null &&
          item.localMachineryWorkingHourImage!.preSignedName == null) {
        final result = await _uploadImage(
            item.localMachineryWorkingHourImage!.path!, item);
        if (result.isRight()) {
          item = item.copyWith(
            localMachineryWorkingHourImage: item.localMachineryWorkingHourImage!
                .copyWith(preSignedName: result.getRight().toNullable()),
          );
          await _localRepository.updateProjectData(item);
        } else {
          return;
        }
      } else {
        debugPrint("NO MACHINERY WORK HOUR IMAGE TO UPLOAD");
      }

      ///upload stop image
      if (item.stopsImage != null &&
          item.stopsImage!.path != null &&
          item.stopsImage!.preSignedName == null) {
        final uploadResult = await _uploadImage(item.stopsImage!.path!, item);
        if (uploadResult.isRight()) {
          item = item.copyWith(
            stopsImage: item.stopsImage!
                .copyWith(preSignedName: uploadResult.getRight().toNullable()),
          );
          await _localRepository.updateProjectData(item);
        } else {
          return;
        }
      }

      ///upload machinery part consume image
      for (final machineryPartItem in item.machineryPartConsumes) {
        for (final image in machineryPartItem.images) {
          if (image.path != null && image.preSignedName == null) {
            final result = await _uploadImage(image.path!, item);
            if (result.isRight()) {
              final updatedImages = machineryPartItem.images
                  .map(
                    (e) => e.id == image.id
                        ? e.copyWith(
                            preSignedName: result.getRight().toNullable())
                        : e,
                  )
                  .toList();
              item = item.copyWith(
                machineryPartConsumes: item.machineryPartConsumes
                    .map(
                      (e) => e.id == machineryPartItem.id
                          ? e.copyWith(images: updatedImages)
                          : e,
                    )
                    .toList(),
              );
              await _localRepository.updateProjectData(item);
            } else {
              return;
            }
          }
        }
      }

      ///upload machinery service image
      for (final machineryServiceItem in item.machineryServices) {
        for (final image in machineryServiceItem.images) {
          if (image.path != null && image.preSignedName == null) {
            final result = await _uploadImage(image.path!, item);
            if (result.isRight()) {
              final updatedImages = machineryServiceItem.images
                  .map(
                    (e) => e.id == image.id
                        ? e.copyWith(
                            preSignedName: result.getRight().toNullable())
                        : e,
                  )
                  .toList();
              item = item.copyWith(
                machineryServices: item.machineryServices
                    .map(
                      (e) => e.id == machineryServiceItem.id
                          ? e.copyWith(images: updatedImages)
                          : e,
                    )
                    .toList(),
              );
              await _localRepository.updateProjectData(item);
            } else {
              return;
            }
          }
        }
      }

      final result = await (item.syncType == DataSyncType.create
          ? _apiRepository.storeProjectData(item)
          : _apiRepository.updateProjectData(item));
      await result.fold(
        (l) async {
          debugPrint("STATUS CHANGED TO FAILED");
          await _localRepository.updateProjectData(item.copyWith(
            syncStatus: DataSyncStatus.failed,
            lassSyncError: l.message,
          ));
        },
        (r) async {
          debugPrint("STATUS CHANGED TO SYNCED");
          await _localRepository.updateProjectData(
              item.copyWith(syncStatus: DataSyncStatus.synced));
        },
      );
    } catch (ex) {
      await _localRepository.updateProjectData(
        item.copyWith(
          syncStatus: DataSyncStatus.failed,
          lassSyncError: ex.toString(),
        ),
      );
    }
  }

  Future<ResultData<String>> _uploadImage(
      String filePath, ProjectDataEntity item) async {
    final result = await _uploadImageToStorageUseCase.call(
      image: XFile(filePath),
    );
    await result.fold(
      (l) async {
        debugPrint("FAILED TO UPLOAD IMAGE");
        await _localRepository.updateProjectData(item.copyWith(
          syncStatus: DataSyncStatus.failed,
          lassSyncError: l.message,
        ));
      },
      (preSignName) async {
        debugPrint("IMAGE UPLOADED SUCCESSFULLY $preSignName");
      },
    );
    return result;
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
