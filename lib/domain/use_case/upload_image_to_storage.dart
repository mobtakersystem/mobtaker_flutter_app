import 'package:cross_file/cross_file.dart';
import 'package:dio/dio.dart';
import 'package:mpm/domain/failure_model.dart';
import 'package:mpm/domain/repository/storage.dart';
import 'package:uuid/uuid.dart';

class UploadImageToStorageUseCase {
  final StorageRepository _storageRepository;
  final Uuid _uuid;

  UploadImageToStorageUseCase(this._storageRepository, this._uuid);

  Future<ResultData<String>> call(
      {required XFile image, CancelToken? cancelToken}) async {
    var uuIdName = '${_uuid.v4()}.${image.mimeType ?? 'jpg'}';
    final result =
        await _storageRepository.getPreSignedUpload([uuIdName], cancelToken);
    if (result.isLeft()) {
      return ResultData.left(result.getLeft().toNullable()!);
    } else {
      final preSignLink = result.getRight().toNullable()!.first;
      final uploadResult = await _storageRepository.uploadImage(
        preSignLink,
        image,
        cancelToken: cancelToken,
      );
      if (uploadResult.isLeft()) {
        return ResultData.left(uploadResult.getLeft().toNullable()!);
      } else {
        return ResultData.right(uuIdName);
      }
    }
  }
}
