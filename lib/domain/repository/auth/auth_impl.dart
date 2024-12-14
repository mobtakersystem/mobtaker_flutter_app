import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:mpm/common/work_manager_config.dart';
import 'package:mpm/data/data_provider/auth/auth_interface.dart';
import 'package:mpm/data/entities/user/user_entity.dart';
import 'package:mpm/data/network/network_service.dart';
import 'package:mpm/domain/exception_handling.dart';
import 'package:mpm/domain/failure_model.dart';
import 'package:workmanager/workmanager.dart';

import 'auth_interface.dart';

const tokenKey = "tokenK";
const duration = 15;

class AuthRepositoryImpl extends AuthRepository {
  final AuthDataProvider _dataProvider;
  final FlutterSecureStorage _secureStorage;

  AuthRepositoryImpl(
      {required AuthDataProvider dataProvider,
      required FlutterSecureStorage secureStorage})
      : _dataProvider = dataProvider,
        _secureStorage = secureStorage;

  @override
  Future<ResultData<UserEntity>> checkOtp(String loginToken, String otp) async {
    final result = await _dataProvider.checkOtp(loginToken, otp).mapToEither();
    if (result.isLeft()) {
      return ResultData.left(result.getLeft().toNullable()!);
    } else {
      final data = result.getRight().toNullable()!;
      await _secureStorage.write(key: tokenKey, value: data.token);
      GetIt.I<NetworkService>().addAuthToken(data.token);
      _registerWorkManager();
      return ResultData.right(data.userEntity);
    }
  }

  @override
  Future<ResultData<String>> login(String cellPhone) {
    return _dataProvider.login(cellPhone).mapToEither();
  }

  @override
  Future<ResultData<String>> resendOtp(String loginToken) {
    return _dataProvider.resendOtp(loginToken).mapToEither();
  }

  @override
  Future<bool> authConfig() async {
    final token = await _secureStorage.read(key: tokenKey);

    if (token?.isEmpty ?? true) {
      return false;
    }
    GetIt.I<NetworkService>().addAuthToken(token!);
    _registerWorkManager();
    return true;
  }

  _registerWorkManager() {
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
}
