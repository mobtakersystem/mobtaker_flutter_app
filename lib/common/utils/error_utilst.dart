import 'package:mpm/data/network/custom_exception.dart';
import 'package:mpm/domain/failure_model.dart';

class ErrorUtils {
  static transformExceptionToMessage(Object error) {
    if (error is NetworkException) {
      return (error).errorMessage ??
          "خطایی در ارتباط با سرور رخ داده است. لطفا دوباره تلاش کنید.";
    } else if (error is FailureModel) {
      return (error).message;
    }
    return "خطای ناشناخته رخ داده است. لطفا دوباره تلاش کنید.";
  }
}
