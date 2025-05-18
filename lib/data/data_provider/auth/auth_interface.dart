import 'package:mpm/data/entities/auth/login_token_state.dart';
import 'package:mpm/data/entities/user/user_entity.dart';

abstract class AuthDataProvider {
  Future<String> loginCellphone(String cellPhone);

  Future<LoginTokenState> login({
    required String userName,
    required String password,
    required String? deviceId,
  });

  Future<AuthUser> checkOtp(String loginToken, String otp, {String? deviceId});

  Future<String> resendOtp(String loginToken);
}
