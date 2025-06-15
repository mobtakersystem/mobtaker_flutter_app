import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:mpm/domain/repository/auth/auth_interface.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

part 'auth_provider.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated() = Authenticated;

  const factory AuthState.unauthenticated() = Unauthenticated;
}

@riverpod
class Auth extends _$Auth {
  @override
  FutureOr<AuthState> build() async {
    final result = await GetIt.I.get<AuthRepository>().authConfig();
    return result
        ? const AuthState.authenticated()
        : const AuthState.unauthenticated();
  }

 Future<void> unAuthenticated() async {
    await GetIt.I.get<AuthRepository>().logOut();
    state = const AsyncData(AuthState.unauthenticated());
    ref.invalidateSelf();
  }
}
