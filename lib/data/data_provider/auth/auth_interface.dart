import 'package:mpm/data/entities/user/user_entity.dart';

abstract class AuthDataProvider {
  Future<String> login(String cellPhone);

  Future<AuthUser> checkOtp(String loginToken, String otp);

  Future<String> resendOtp(String loginToken);
}
