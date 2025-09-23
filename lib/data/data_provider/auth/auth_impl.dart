import 'package:mpm/data/entities/auth/login_token_state.dart';
import 'package:mpm/data/entities/user/user_entity.dart';
import 'package:mpm/data/network/network_request.dart';
import 'package:mpm/data/network/network_service.dart';
import 'package:mpm/data/network/request_body.dart';

import 'auth_interface.dart';

class AuthDataProviderImpl extends AuthDataProvider {
  final NetworkService _networkService;
  final Future<String?> Function() getAppSignature;

  AuthDataProviderImpl({
    required NetworkService networkService,
    required this.getAppSignature,
  }) : _networkService = networkService;

  @override
  Future<AuthUser> checkOtp(String loginToken, String otp, {String? deviceId}) {
    return _networkService.execute(
      NetworkRequest(
        type: NetworkRequestType.post,
        path: 'auth/check-otp',
        data: NetworkRequestBody.json(
          {
            "loginToken": loginToken,
            "otp": otp,
            "mobileId": deviceId,
          },
        ),
      ),
      parser: (jsonParam) {
        return (
          userEntity: UserEntity.fromJson({...jsonParam!['user']}),
          token: jsonParam['token'] as String,
        );
      },
    );
  }

  @override
  Future<String> loginCellphone(String cellPhone) {
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

  @override
  Future<LoginTokenState> login({
    required String userName,
    required String password,
    required String? deviceId,
  }) async {
    final appSignature = await getAppSignature();
    return _networkService.execute(
      NetworkRequest(
        type: NetworkRequestType.post,
        path: 'auth/login',
        data: NetworkRequestBody.json(
          {
            "cellphone": userName,
            "password": password,
            "mobileId": deviceId,
            "mobile_signiture": appSignature,
          },
        ),
      ),
      parser: (jsonParam) {
        if (jsonParam!['loginToken'] != null) {
          return LoginTokenState.otpToken(
            jsonParam['loginToken'] as String,
          );
        } else if (jsonParam['token'] != null) {
          return LoginTokenState.authUser(
            (
              userEntity: UserEntity.fromJson({
                "userName": jsonParam['userName'],
                ...jsonParam['user'],
              }),
              token: jsonParam['token'] as String,
            ),
          );
        }
        throw Exception('Invalid response from server');
      },
    );
  }
}
