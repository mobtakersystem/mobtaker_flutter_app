import 'dart:convert';
import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:fast_rsa/fast_rsa.dart' as fast;
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:local_auth/local_auth.dart';
import 'package:mpm/common/work_manager_config.dart';
import 'package:mpm/data/data_provider/auth/auth_interface.dart';
import 'package:mpm/data/entities/auth/login_token_state.dart';
import 'package:mpm/data/entities/user/user_entity.dart';
import 'package:mpm/data/network/network_service.dart';
import 'package:mpm/domain/exception_handling.dart';
import 'package:mpm/domain/failure_model.dart';
import 'package:uuid/uuid.dart';

import 'package:workmanager/workmanager.dart';

import 'auth_interface.dart';

const tokenKey = "tokenK";
const loginUserInfo = "loginUserInfo";
const userNameTemp = "usernameTemp";
const userNameActive = "usernameActive";
const passwordTemp = "passwordTemp";
const passwordActive = "passwordTempActive";
const duration = 15;

class AuthRepositoryImpl extends AuthRepository {
  final AuthDataProvider _dataProvider;
  final FlutterSecureStorage _secureStorage;
  final String _rsaPublicKey;
  final bool _isBackgroundServiceActive;

  AuthRepositoryImpl({
    required AuthDataProvider dataProvider,
    required FlutterSecureStorage secureStorage,
    required String rsaPublicKey,
    bool isBackgroundServiceActive = true,
  })  : _dataProvider = dataProvider,
        _secureStorage = secureStorage,
        _isBackgroundServiceActive = isBackgroundServiceActive,
        _rsaPublicKey = rsaPublicKey;

  @override
  Future<ResultData<UserEntity>> checkOtp(String loginToken, String otp) async {
    final result = await _dataProvider
        .checkOtp(
          loginToken,
          otp,
          deviceId: await getPersistentDeviceId(),
        )
        .mapToEither();
    if (result.isLeft()) {
      return ResultData.left(result.getLeft().toNullable()!);
    } else {
      final data = result.getRight().toNullable()!;
      await _secureStorage.write(key: tokenKey, value: data.token);
      await _secureStorage.write(
        key: loginUserInfo,
        value: jsonEncode(
          data.userEntity.toJson(),
        ),
      );
      GetIt.I<NetworkService>().addAuthToken(data.token);
      _registerWorkManager();
      return ResultData.right(data.userEntity);
    }
  }

  @override
  Future<ResultData<String>> resendOtp(String loginToken) {
    return _dataProvider.resendOtp(loginToken).mapToEither();
  }

  @override
  Future<bool> authConfig() async {
    return false;
    final token = await _secureStorage.read(key: tokenKey);
    if (token?.isEmpty ?? true) {
      return false;
    }
    GetIt.I<NetworkService>().addAuthToken(token!);
    _registerWorkManager();
    return true;
  }

  _registerWorkManager() {
    if (!_isBackgroundServiceActive) {
      return;
    }
    Workmanager().registerPeriodicTask(
      syncProjectDataTaskID,
      syncProjectDataTaskID,
      frequency: const Duration(minutes: duration),
      constraints: Constraints(
        networkType: NetworkType.connected,
      ),
    );
  }

  @override
  Future<ResultData<void>> logOut() {
    f() async {
      await _secureStorage.delete(key: tokenKey);
      GetIt.I<NetworkService>().addAuthToken("");
      GetIt.I.pushNewScope();
      Workmanager().cancelAll();
    }

    return f().mapToEither();
  }

  @override
  Future<ResultData<String>> loginCellphone(String cellPhone) {
    return _dataProvider.loginCellphone(cellPhone).mapToEither();
  }

  @override
  Future<ResultData<LoginTokenState>> login(
      {required String userName, required String password}) async {
    final enUserName = await _encryptWithPublicKey(userName);
    final enPassword = await _encryptWithPublicKey(password);

    final resultData = await _loginEncryptedData(
      enUserName: enUserName,
      enPassword: enPassword,
    );
    if (resultData.isRight()) {
      await _secureStorage.write(key: userNameTemp, value: enUserName);
      await _secureStorage.write(key: passwordTemp, value: enPassword);
    }
    return resultData;
  }

  Future<String> _encryptWithPublicKey(
    String plainText,
  ) async {
    return await fast.RSA.encryptPKCS1v15(plainText, _rsaPublicKey);
  }

  Future<ResultData<LoginTokenState>> _loginEncryptedData(
      {required String enUserName, required String enPassword}) async {
    final result = await _dataProvider
        .login(
            password: enPassword,
            userName: enUserName,
            deviceId: await getPersistentDeviceId())
        .mapToEither();
    if (result.isLeft()) {
      return ResultData.left(result.getLeft().toNullable()!);
    } else {
      await result.getRight().toNullable()?.when(
            otpToken: (loginToken) {},
            authUser: (autUser) async {
              await _secureStorage.write(key: tokenKey, value: autUser.token);
              await _secureStorage.write(
                key: loginUserInfo,
                value: jsonEncode(
                  autUser.userEntity.toJson(),
                ),
              );
              GetIt.I<NetworkService>().addAuthToken(autUser.token);
              _registerWorkManager();
            },
          );

      return result;
    }
  }

  @override
  Future<String> getPersistentDeviceId() async {
    // Generate new device ID
    final deviceInfo = DeviceInfoPlugin();

    String rawId = '';
    if (Platform.isAndroid) {
      final androidInfo = await deviceInfo.androidInfo;
      rawId = "${androidInfo.id}:${androidInfo.name}:${androidInfo.model}";
    } else if (Platform.isIOS) {
      final iosInfo = await deviceInfo.iosInfo;
      rawId =
          "${iosInfo.identifierForVendor ?? DateTime.now().toIso8601String()}:${iosInfo.name}:${iosInfo.model}";
    }
    final randomId = await _secureStorage.read(key: 'randomId');

    if (randomId == null) {
      final newRandomID = GetIt.I<Uuid>().v4();
      await _secureStorage.write(key: 'randomId', value: newRandomID);
      rawId += ":$newRandomID";
    } else {
      rawId += ":$randomId";
    }
    final generatedId = base64Encode(utf8.encode(rawId));
    debugPrint(generatedId);
    debugPrint(utf8.decode(base64Decode(generatedId)));
    return generatedId;
  }

  @override
  Future<ResultData<LoginTokenState>> biometricLogin() async {
    final isAuth = await _biometricAuthentication(
      'ورود به برنامه با اطلاعات بیومتریک',
    ).mapToEither();
    if (isAuth.isLeft() || (isAuth.getRight().toNullable() ?? false) == false) {
      return ResultData.left(isAuth.getLeft().toNullable()!);
    } else {
      final userName = await _secureStorage.read(key: userNameTemp);
      final password = await _secureStorage.read(key: passwordTemp);
      if (userName == null || password == null) {
        return ResultData.left(
          const MessageFailure(
            message: "خطا در ورود بیومتریک",
          ),
        );
      }
      return _loginEncryptedData(
        enUserName: userName,
        enPassword: password,
      );
    }
  }

  Future<bool> _biometricAuthentication(String reason) async {
    try {
      final auth = LocalAuthentication();
      final bool authenticated = await auth.authenticate(
        localizedReason: reason,
        options: const AuthenticationOptions(
          useErrorDialogs: true,
          stickyAuth: true,
        ),
      );
      return authenticated;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<ResultData<UserEntity>> getUserInfo() async {
    func() async {
      final jsonString = await _secureStorage.read(key: loginUserInfo) ?? "{}";
      return UserEntity.fromJson(jsonDecode(jsonString));
    }

    return func.call().mapToEither();
  }
}
