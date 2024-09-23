import 'package:cross_file/cross_file.dart';
import 'package:dio/dio.dart';
import 'package:mpm/data/data_provider/storage/storage_interface.dart';
import 'package:mpm/domain/exception_handling.dart';
import 'package:mpm/domain/failure_model.dart';

class StorageRepository {
  final StorageDataProvider _storageProvider;

  StorageRepository({required StorageDataProvider storageProvider})
      : _storageProvider = storageProvider;

  Future<ResultData<List<String>>> getPreSignedUpload(
      List<String> fileNames, [CancelToken? cancelToken]) {
    return _storageProvider
        .getPreSignedUpload(fileNames, cancelToken)
        .mapToEither();
  }

  Future<ResultData<void>> deleteObjects(List<String> fileNames) {
    return _storageProvider.deleteObjects(fileNames).mapToEither();
  }

  Future<ResultData<String>> downloadLink(String objectName) {
    return _storageProvider.downloadLink(objectName).mapToEither();
  }

  Future<ResultData<void>> uploadImage(String preSignLink, XFile file,
      {Function(int count, int total)? progressCallback,
      CancelToken? cancelToken}) {
    return _storageProvider
        .uploadImage(preSignLink, file,
            progressCallback: progressCallback, cancelToken: cancelToken)
        .mapToEither();
  }
}
