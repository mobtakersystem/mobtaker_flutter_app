import 'package:mpm/data/entities/auth/login_token_state.dart';
import 'package:mpm/data/entities/user/user_entity.dart';
import 'package:mpm/domain/failure_model.dart';

abstract class AuthRepository {
  Future<bool> authConfig();

  Future<ResultData<UserEntity>> getUserInfo();

  Future<ResultData<LoginTokenState>> biometricLogin();

  Future<ResultData<String>> loginCellphone(String cellPhone);

  Future<ResultData<LoginTokenState>> login({
    required String userName,
    required String password,
  });

  Future<ResultData<void>> logOut();

  Future<ResultData<UserEntity>> checkOtp(String loginToken, String otp);

  Future<ResultData<String>> resendOtp(String loginToken);

  Future<String> getPersistentDeviceId();
}
