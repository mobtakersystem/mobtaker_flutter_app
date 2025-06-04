// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_token_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginTokenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String loginToken) otpToken,
    required TResult Function(({String token, UserEntity userEntity}) autUser)
        authUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String loginToken)? otpToken,
    TResult? Function(({String token, UserEntity userEntity}) autUser)?
        authUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String loginToken)? otpToken,
    TResult Function(({String token, UserEntity userEntity}) autUser)? authUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpToken value) otpToken,
    required TResult Function(AccessToken value) authUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpToken value)? otpToken,
    TResult? Function(AccessToken value)? authUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpToken value)? otpToken,
    TResult Function(AccessToken value)? authUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginTokenStateCopyWith<$Res> {
  factory $LoginTokenStateCopyWith(
          LoginTokenState value, $Res Function(LoginTokenState) then) =
      _$LoginTokenStateCopyWithImpl<$Res, LoginTokenState>;
}

/// @nodoc
class _$LoginTokenStateCopyWithImpl<$Res, $Val extends LoginTokenState>
    implements $LoginTokenStateCopyWith<$Res> {
  _$LoginTokenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginTokenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OtpTokenImplCopyWith<$Res> {
  factory _$$OtpTokenImplCopyWith(
          _$OtpTokenImpl value, $Res Function(_$OtpTokenImpl) then) =
      __$$OtpTokenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String loginToken});
}

/// @nodoc
class __$$OtpTokenImplCopyWithImpl<$Res>
    extends _$LoginTokenStateCopyWithImpl<$Res, _$OtpTokenImpl>
    implements _$$OtpTokenImplCopyWith<$Res> {
  __$$OtpTokenImplCopyWithImpl(
      _$OtpTokenImpl _value, $Res Function(_$OtpTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginTokenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginToken = null,
  }) {
    return _then(_$OtpTokenImpl(
      null == loginToken
          ? _value.loginToken
          : loginToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpTokenImpl implements OtpToken {
  const _$OtpTokenImpl(this.loginToken);

  @override
  final String loginToken;

  @override
  String toString() {
    return 'LoginTokenState.otpToken(loginToken: $loginToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpTokenImpl &&
            (identical(other.loginToken, loginToken) ||
                other.loginToken == loginToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginToken);

  /// Create a copy of LoginTokenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpTokenImplCopyWith<_$OtpTokenImpl> get copyWith =>
      __$$OtpTokenImplCopyWithImpl<_$OtpTokenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String loginToken) otpToken,
    required TResult Function(({String token, UserEntity userEntity}) autUser)
        authUser,
  }) {
    return otpToken(loginToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String loginToken)? otpToken,
    TResult? Function(({String token, UserEntity userEntity}) autUser)?
        authUser,
  }) {
    return otpToken?.call(loginToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String loginToken)? otpToken,
    TResult Function(({String token, UserEntity userEntity}) autUser)? authUser,
    required TResult orElse(),
  }) {
    if (otpToken != null) {
      return otpToken(loginToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpToken value) otpToken,
    required TResult Function(AccessToken value) authUser,
  }) {
    return otpToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpToken value)? otpToken,
    TResult? Function(AccessToken value)? authUser,
  }) {
    return otpToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpToken value)? otpToken,
    TResult Function(AccessToken value)? authUser,
    required TResult orElse(),
  }) {
    if (otpToken != null) {
      return otpToken(this);
    }
    return orElse();
  }
}

abstract class OtpToken implements LoginTokenState {
  const factory OtpToken(final String loginToken) = _$OtpTokenImpl;

  String get loginToken;

  /// Create a copy of LoginTokenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpTokenImplCopyWith<_$OtpTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccessTokenImplCopyWith<$Res> {
  factory _$$AccessTokenImplCopyWith(
          _$AccessTokenImpl value, $Res Function(_$AccessTokenImpl) then) =
      __$$AccessTokenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({({String token, UserEntity userEntity}) autUser});
}

/// @nodoc
class __$$AccessTokenImplCopyWithImpl<$Res>
    extends _$LoginTokenStateCopyWithImpl<$Res, _$AccessTokenImpl>
    implements _$$AccessTokenImplCopyWith<$Res> {
  __$$AccessTokenImplCopyWithImpl(
      _$AccessTokenImpl _value, $Res Function(_$AccessTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginTokenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autUser = null,
  }) {
    return _then(_$AccessTokenImpl(
      null == autUser
          ? _value.autUser
          : autUser // ignore: cast_nullable_to_non_nullable
              as ({String token, UserEntity userEntity}),
    ));
  }
}

/// @nodoc

class _$AccessTokenImpl implements AccessToken {
  const _$AccessTokenImpl(this.autUser);

  @override
  final ({String token, UserEntity userEntity}) autUser;

  @override
  String toString() {
    return 'LoginTokenState.authUser(autUser: $autUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessTokenImpl &&
            (identical(other.autUser, autUser) || other.autUser == autUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, autUser);

  /// Create a copy of LoginTokenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccessTokenImplCopyWith<_$AccessTokenImpl> get copyWith =>
      __$$AccessTokenImplCopyWithImpl<_$AccessTokenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String loginToken) otpToken,
    required TResult Function(({String token, UserEntity userEntity}) autUser)
        authUser,
  }) {
    return authUser(autUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String loginToken)? otpToken,
    TResult? Function(({String token, UserEntity userEntity}) autUser)?
        authUser,
  }) {
    return authUser?.call(autUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String loginToken)? otpToken,
    TResult Function(({String token, UserEntity userEntity}) autUser)? authUser,
    required TResult orElse(),
  }) {
    if (authUser != null) {
      return authUser(autUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpToken value) otpToken,
    required TResult Function(AccessToken value) authUser,
  }) {
    return authUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpToken value)? otpToken,
    TResult? Function(AccessToken value)? authUser,
  }) {
    return authUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpToken value)? otpToken,
    TResult Function(AccessToken value)? authUser,
    required TResult orElse(),
  }) {
    if (authUser != null) {
      return authUser(this);
    }
    return orElse();
  }
}

abstract class AccessToken implements LoginTokenState {
  const factory AccessToken(
          final ({String token, UserEntity userEntity}) autUser) =
      _$AccessTokenImpl;

  ({String token, UserEntity userEntity}) get autUser;

  /// Create a copy of LoginTokenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccessTokenImplCopyWith<_$AccessTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
