import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mpm/data/entities/user/user_entity.dart';
import 'package:mpm/domain/repository/auth/auth_interface.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:get_it/get_it.dart';

part 'login_provider.freezed.dart';

part 'login_provider.g.dart';

@freezed
class LoginStatus with _$LoginStatus {
  const factory LoginStatus.initial() = Initial;

  const factory LoginStatus.checkOtp(String loginToken) = CheclOtp;

  const factory LoginStatus.success(UserEntity user) = Success;
}

@riverpod
class LoginFlow extends _$LoginFlow {
  @override
  FutureOr<LoginStatus> build() async {
    return const LoginStatus.initial();
  }

  userPassLogin({required String userName, required String password}) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final result = await GetIt.I.get<AuthRepository>().login(
            userName: userName,
            password: password,
          );
      return result.fold((l) {
        throw l;
      }, (r) {
        return r.when(
          otpToken: (loginToken) {
            return LoginStatus.checkOtp(loginToken);
          },
          authUser: (authUser) {
            return LoginStatus.success(authUser.userEntity);
          },
        );
      });
    });
  }

  biometricLogin() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final result = await GetIt.I.get<AuthRepository>().biometricLogin();
      return result.fold((l) {
        throw l;
      }, (r) {
        return r.when(
          otpToken: (loginToken) {
            return LoginStatus.checkOtp(loginToken);
          },
          authUser: (authUser) {
            return LoginStatus.success(authUser.userEntity);
          },
        );
      });
    });
  }

  phoneLogin(String cellPhone) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final result =
          await GetIt.I.get<AuthRepository>().loginCellphone(cellPhone);
      return result.fold((l) {
        throw l;
      }, (r) {
        return LoginStatus.checkOtp(r);
      });
    });
  }

  phoneCheckOtp(String otp) async {
    final previous = state;
    if (previous.requireValue is! CheclOtp) {
      return;
    }
    state = const AsyncLoading<LoginStatus>().copyWithPrevious(previous);
    state = await AsyncValue.guard(() async {
      final result = await GetIt.I
          .get<AuthRepository>()
          .checkOtp((previous.requireValue as CheclOtp).loginToken, otp);
      return result.fold((l) {
        throw l;
      }, (r) {
        return LoginStatus.success(r);
      });
    });
  }

  resendOtp() async {
    final previous = state;
    if (previous.requireValue is! CheclOtp) {
      return;
    }
    state = const AsyncLoading<LoginStatus>().copyWithPrevious(previous);
    state = await AsyncValue.guard<LoginStatus>(() async {
      final result = await GetIt.I
          .get<AuthRepository>()
          .resendOtp((previous.requireValue as CheclOtp).loginToken);
      return result.fold((l) {
        throw l;
      }, (r) {
        return LoginStatus.checkOtp(r);
      });
    });
  }
}
