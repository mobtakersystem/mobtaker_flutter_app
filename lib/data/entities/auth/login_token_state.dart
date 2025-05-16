import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mpm/data/entities/user/user_entity.dart';

part 'login_token_state.freezed.dart';

@freezed
class LoginTokenState with _$LoginTokenState {
  const factory LoginTokenState.otpToken(String loginToken) = OtpToken;

  const factory LoginTokenState.authUser(AuthUser autUser) = AccessToken;
}
