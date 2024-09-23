import 'package:mpm/data/entities/user/user_entity.dart';
import 'package:mpm/data/network/network_request.dart';
import 'package:mpm/data/network/network_service.dart';
import 'package:mpm/data/network/request_body.dart';

import 'auth_interface.dart';

class AuthDataProviderImpl extends AuthDataProvider {
  final NetworkService _networkService;

  AuthDataProviderImpl({required NetworkService networkService})
      : _networkService = networkService;

  @override
  Future<AuthUser> checkOtp(String loginToken, String otp) {
    return _networkService.execute(
      NetworkRequest(
        type: NetworkRequestType.post,
        path: 'auth/check-otp',
        data: NetworkRequestBody.json(
          {
            "loginToken": loginToken,
            "otp": otp,
          },
        ),
      ),
      parser: (jsonParam) {
        return (
          userEntity: UserEntity.fromJson(jsonParam!['user']),
          token: jsonParam!['token'] as String,
        );
      },
    );
  }

  @override
  Future<String> login(String cellPhone) {
    return _networkService.execute(
      NetworkRequest(
        type: NetworkRequestType.post,
        path: 'auth/login/cellphone',
        data: NetworkRequestBody.json(
          {
            "cellphone": cellPhone,
          },
        ),
      ),
      parser: (jsonParam) {
        return jsonParam!['loginToken'] as String;
      },
    );
  }

  @override
  Future<String> resendOtp(String loginToken) {
    return _networkService.execute(
      NetworkRequest(
        type: NetworkRequestType.post,
        path: 'auth/resend-otp',
        data: NetworkRequestBody.json(
          {
            "loginToken": loginToken,
          },
        ),
      ),
      parser: (jsonParam) {
        return jsonParam!['loginToken'] as String;
      },
    );
  }
}
