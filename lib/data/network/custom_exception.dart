class NetworkException implements Exception {
  final String? errorMessage;
  final int errorCode;

  /// error code 422 is default
  /// error code 440 until 449 is  timeout  exception
  /// error code 450 is request cancelled exception
  NetworkException({this.errorMessage, this.errorCode = 422});

  @override
  toString() => errorMessage ?? "default_error";
}

class NotFoundException implements Exception {
  final String errorMessage;

  NotFoundException({required this.errorMessage});

  @override
  String toString() {
    return errorMessage;
  }
}

class LocalDbException implements Exception {
  final String errorMessage;

  LocalDbException({required this.errorMessage});

  @override
  String toString() {
    return errorMessage;
  }
}
