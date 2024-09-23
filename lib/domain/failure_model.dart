import 'package:fpdart/fpdart.dart';

typedef ResultData<T> = Either<FailureModel, T>;

sealed class FailureModel {
  final String message;

  const FailureModel({required this.message});

  @override
  toString() => message;
}

class UnAuthorizedFailure extends FailureModel {
  const UnAuthorizedFailure({super.message = 'unauthorized'});
}

class AccessDeniedFailure extends FailureModel {
  const AccessDeniedFailure({String? message})
      : super(
          message:
              message ?? 'شما دسترسی لازم برای انجام این عملیات را ندارید.',
        );
}

class UnexpectedFailure extends FailureModel {
  const UnexpectedFailure(
      {super.message = 'خطای ناشناخته رخ داده است. لطفا دوباره تلاش کنید.'});
}

class TimeoutFailure extends FailureModel {
  const TimeoutFailure(
      {super.message =
          'اعتبار درخواست به پایان رسیده است. لطفا دوباره تلاش کنید.'});
}

class CancelledRequestFailure extends FailureModel {
  const CancelledRequestFailure({super.message = 'عملیات لغو شد.'});
}

class NotFoundFailure extends FailureModel {
  const NotFoundFailure({String? message})
      : super(message: message ?? 'موردی یافت نشد.');
}

class MessageFailure extends FailureModel {
  const MessageFailure(
      {super.message = 'خطایی رخ داده است. لطفا دوباره تلاش کنید.'});
}

class LocalDbFailure extends FailureModel {
  const LocalDbFailure({required super.message});
}
