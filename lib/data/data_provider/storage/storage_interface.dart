import 'package:cross_file/cross_file.dart';
import 'package:dio/dio.dart';

abstract class StorageDataProvider {
  Future<List<String>> getPreSignedUpload(
      List<String> fileNames, [CancelToken? cancelToken]);

  Future<void> deleteObjects(List<String> fileNames);

  Future<String> downloadLink(String objectName);

  Future<void> uploadImage(String preSignLink, XFile file,
      {Function(int count, int total)? progressCallback,
      CancelToken? cancelToken});
}
