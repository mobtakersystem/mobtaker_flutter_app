import 'package:cross_file/cross_file.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:mpm/data/network/network_request.dart';
import 'package:mpm/data/network/network_service.dart';
import 'package:mpm/data/network/request_body.dart';

import 'storage_interface.dart';

class StorageApiImpl implements StorageDataProvider {
  final NetworkService _networkService;

  StorageApiImpl({required NetworkService networkService})
      : _networkService = networkService;

  @override
  Future<void> deleteObjects(List<String> fileNames) {
    return _networkService.execute(
      NetworkRequest(
        type: NetworkRequestType.post,
        path: 'storage/delete-objects',
        data: NetworkRequestBody.json({
          "object_names": fileNames.map((e) => {"Key": e}).toList(),
        }),
      ),
      parser: (jsonParam) {
        return;
      },
    );
  }

  @override
  Future<List<String>> getPreSignedUpload(List<String> fileNames,
      [CancelToken? cancelToken]) {
    return _networkService.execute(
      NetworkRequest(
          type: NetworkRequestType.post,
          path: 'storage/presigned-upload',
          data: NetworkRequestBody.json({
            "number_of_objects": fileNames.length,
            "file_names": fileNames.toList(),
          })),
      cancelToken: cancelToken,
      parser: (jsonParam) {
        return (jsonParam!['objects'] as List)
            .map((e) => e.toString())
            .toList();
      },
    );
  }

  @override
  Future<void> uploadImage(String preSignLink, XFile file,
      {Function(int count, int total)? progressCallback,
      CancelToken? cancelToken}) async {
    var dio = Dio();
    var parse = Uri.parse(preSignLink);
    dio.options.headers.addAll(parse.queryParameters);
    debugPrint("UPLOAD DATA");
    debugPrint(parse.host);
    debugPrint(parse.path);
    debugPrint(preSignLink);
    dio.options.headers.addAll({
      "Host": parse.host,
      "Content-Type": "application/octet-stream",
      "Content-Length": await file.length(),
      "bucket": parse.pathSegments.first
    });
    debugPrint(dio.options.headers.toString());
    debugPrint("START UPLOADING IMAGE");
    final result = await dio.putUri(
      parse,
      data: XFile.fromData(await file.readAsBytes()).openRead(),
      onSendProgress: (count, total) {
        debugPrint("Uploading");
        debugPrint(count.toString());
        if (progressCallback != null) progressCallback(count, total);
      },
      cancelToken: cancelToken,
    );
    if (result.statusCode != 200) {
      throw Exception("Error uploading image");
    }
    debugPrint("END UPLOADING IMAGE");
  }

  @override
  Future<String> downloadLink(String objectName) {
    return _networkService.execute(
      NetworkRequest(
          type: NetworkRequestType.post,
          path: 'storage/presigned-download',
          data: NetworkRequestBody.json({
            "file_name": objectName,
          })),
      parser: (jsonParam) {
        return jsonParam!['object_url'];
      },
    );
  }
}
