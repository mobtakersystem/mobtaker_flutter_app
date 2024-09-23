import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mpm/data/network/custom_exception.dart';
import 'package:mpm/domain/failure_model.dart';

extension ExtensionOnFuture<T> on Future<T> {
  Future<Either<FailureModel, T>> mapToEither() async {
    try {
      return right(await this);
    } on Exception catch (ex, trace) {
      if (kDebugMode) {
        print("${ex.toString()}$trace");
      }

      return left(ex.toFailure());
    } catch (ex, trace) {
      debugPrint("${ex.toString()}$trace");
      return left(const UnexpectedFailure());
    }
  }
}

extension ExtensionToFailure<T> on Exception {
  // Option<T> getOrThrow() {
  //   return this.fold(() => throw UnexpectedFailure(), (value) => value);
  // }
  FailureModel toFailure() {
    if (this is NetworkException) {
      switch ((this as NetworkException).errorCode) {
        case 401:
          return const UnAuthorizedFailure();
        case 403:
          return AccessDeniedFailure(
              message: (this as NetworkException).errorMessage);
        case >= 440 && < 450:
          return TimeoutFailure(
              message: (this as NetworkException).errorMessage ?? 'timeout');
        case 450:
          return const CancelledRequestFailure();
        default:
          String message =
              (this as NetworkException).errorMessage ?? 'unexpected_error';
          return MessageFailure(message: message);
      }
    } else if (this is NotFoundException) {
      return NotFoundFailure(message: (this as NotFoundException).errorMessage);
    } else if (this is LocalDbException) {
      return LocalDbFailure(message: (this as LocalDbException).errorMessage);
    }
    return const UnexpectedFailure();
  }
}
