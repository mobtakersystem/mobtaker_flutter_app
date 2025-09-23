import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'custom_exception.dart';
import 'network_request.dart';
import 'response_body.dart' as nt;

class NetworkService {
  Dio? _dio;
  final String baseUrl;
  final Map<String, String> _headers;

  NetworkService({
    required this.baseUrl, // Base service url
    dioClient, // Prepared Dio instance could be injected
    httpHeaders, // Global headers could be provided as well
  })  : _dio = dioClient,
        _headers = httpHeaders ?? {};

  Future<Dio> _getDefaultDioClient() async {
    // Global http header
    _headers['content-type'] = 'application/json; charset=utf-8';
    final dio = Dio()
      ..options.baseUrl = baseUrl
      ..options.headers = _headers
      ..options.connectTimeout = const Duration(seconds: 15)
      ..options.receiveTimeout = const Duration(seconds: 20)
      ..interceptors.add(
        PrettyDioLogger(
          requestBody: true,
          error: true,
          responseBody: true,
          enabled: kDebugMode,
          filter: (options, args) {
            if (options.path.contains('projects/drilling/data/create')) {
              return false;
            }
            return true;
          },
        ),
      );

    return dio;
  }

  // Generic type and parser are used to properly deserialise JSON
  Future<Model> execute<Model>(NetworkRequest request,
      {required Model Function(Map<String, dynamic>? jsonParam) parser,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress,
      CancelToken? cancelToken}) async {
    _dio ??= await _getDefaultDioClient();
    dynamic body = request.data.whenOrNull(
      json: (data) => data,
      text: (data) => data,
      formData: (data) {
        return data;
      },
      list: (data) {
        return data;
      },
    );

    try {
      final response = await _dio!.request(
        request.path,
        data: body,
        queryParameters: request.queryParams,
        cancelToken: cancelToken,
        options: Options(
          method: request.type.name,
          headers: {
            ..._headers,
            ...(request.headers ?? {})
          }, // Combine all headers
        ),
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      if (response.statusCode != null &&
          response.statusCode! >= 200 &&
          response.statusCode! < 300) {
        final responseModel = nt.ResponseBody.fromJson(response.data);
        if ((responseModel.status ?? response.statusCode!) >= 200 &&
            (responseModel.status ?? response.statusCode!) < 300) {
          return parser(responseModel.options);
        } else {
          throw NetworkException(
            errorMessage: responseModel.message,
            errorCode: responseModel.status ?? response.statusCode ?? 422,
          );
        }
      }
      final responseModel = nt.ResponseBody.fromJson(response.data);
      throw NetworkException(
        errorMessage: responseModel.message,
        errorCode: responseModel.status ?? response.statusCode ?? 422,
      );
    } on DioException catch (error) {
      if (error.type == DioExceptionType.connectionTimeout) {
        throw NetworkException(
            errorMessage: "connection_timeout_exception", errorCode: 440);
      } else if (error.type == DioExceptionType.sendTimeout) {
        throw NetworkException(
            errorMessage: "send_timeout_exception", errorCode: 441);
      } else if (error.type == DioExceptionType.receiveTimeout) {
        throw NetworkException(
            errorMessage: "receive_timeout_exception", errorCode: 442);
      } else if (error.type == DioExceptionType.cancel) {
        throw NetworkException(
            errorMessage: "request_cancelled_exception", errorCode: 450);
      }
      final errorText = error.response?.data.toString();
      if (error.requestOptions.cancelToken?.isCancelled ?? false) {
        throw NetworkException(errorMessage: errorText);
      }
      if (error.response?.data != null) {
        final response = nt.ResponseBody.fromJson(error.response?.data);
        throw NetworkException(
          errorMessage: response.message,
          errorCode: response.status ?? error.response?.statusCode ?? 422,
        );
      } else if (error.response?.statusCode == 401) {
        throw NetworkException(
          errorMessage: "خطا در احراز هویت کاربر",
          errorCode: 401,
        );
      } else {
        throw NetworkException(
            errorMessage: "خطا در ارتباط با سرور",
            errorCode: error.response?.statusCode ?? 422);
      }
    } catch (error, tr) {
      debugPrint("${error.toString()}$tr)");
      throw NetworkException(errorMessage: error.toString());
    }
  }

  addAuthToken(String token) {
    _headers['Authorization'] = 'Bearer $token';
  }
}
