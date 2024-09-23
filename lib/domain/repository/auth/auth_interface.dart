import 'package:mpm/data/entities/user/user_entity.dart';
import 'package:mpm/domain/failure_model.dart';

abstract class AuthRepository {
  Future<bool> authConfig();

  Future<ResultData<String>> login(String cellPhone);

  Future<ResultData<void>> logOut();

  Future<ResultData<UserEntity>> checkOtp(String loginToken, String otp);

  Future<ResultData<String>> resendOtp(String loginToken);
}
