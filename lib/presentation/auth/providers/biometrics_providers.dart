import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:mpm/domain/repository/auth/auth_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:local_auth/local_auth.dart';

part 'biometrics_providers.g.dart';

@riverpod
Future<bool> isLoginBiometricEnable(IsLoginBiometricEnableRef ref) async {
  return (await GetIt.I<FlutterSecureStorage>()
          .read(key: "isLoginBiometricEnable")) ==
      "enabled";
}

///set biometric login enable
@riverpod
Future<bool> setLoginBiometricEnable(
    SetLoginBiometricEnableRef ref, bool isEnable) async {
  final secureStorage = GetIt.I<FlutterSecureStorage>();
  await secureStorage.write(
      key: "isLoginBiometricEnable", value: isEnable ? "enabled" : "");
  if (isEnable) {
    final userName = await secureStorage.read(key: userNameTemp);
    final password = await secureStorage.read(key: passwordTemp);
    await secureStorage.write(key: userNameActive, value: userName);
    await secureStorage.write(key: passwordActive, value: password);
  } else {
    await secureStorage.write(key: userNameActive, value: "");
    await secureStorage.write(key: passwordActive, value: "");
  }
  return isEnable;
}

//get local auth instance
@riverpod
LocalAuthentication localAuth(LocalAuthRef ref) {
  return LocalAuthentication();
}

@riverpod
Future<bool> biometricAvailable(BiometricAvailableRef ref) async {
  final LocalAuthentication auth = ref.watch(localAuthProvider);

  final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;
  final bool canAuthenticate =
      canAuthenticateWithBiometrics || await auth.isDeviceSupported();
  return canAuthenticate;
}

/// type of biometric available
@riverpod
Future<List<BiometricType>> biometricType(BiometricTypeRef ref) async {
  final LocalAuthentication auth = ref.watch(localAuthProvider);
  final List<BiometricType> availableBiometrics =
      await auth.getAvailableBiometrics();
  return availableBiometrics;
}

@riverpod
Future<String> biometricTypeText(BiometricTypeTextRef ref) async {
  final type = await ref.watch(biometricTypeProvider.future);
  if (type.isEmpty) {
    return "";
  } else {
    return type
        .map((e) {
          switch (e) {
            case BiometricType.face:
              return "تشخیض چهره";
            case BiometricType.fingerprint:
              return "اثر انگشت";
            case BiometricType.iris:
              return "عنبیه";
            default:
              return "";
          }
        })
        .join(", ")
        .trim();
  }
}
