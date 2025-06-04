// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseBody _$ResponseBodyFromJson(Map<String, dynamic> json) {
  return _ResponseBody.fromJson(json);
}

/// @nodoc
mixin _$ResponseBody {
  int? get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  Map<String, dynamic>? get options => throw _privateConstructorUsedError;
  Map<String, dynamic>? get errors => throw _privateConstructorUsedError;

  /// Serializes this ResponseBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseBodyCopyWith<ResponseBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseBodyCopyWith<$Res> {
  factory $ResponseBodyCopyWith(
          ResponseBody value, $Res Function(ResponseBody) then) =
      _$ResponseBodyCopyWithImpl<$Res, ResponseBody>;
  @useResult
  $Res call(
      {int? status,
      String message,
      Map<String, dynamic>? options,
      Map<String, dynamic>? errors});
}

/// @nodoc
class _$ResponseBodyCopyWithImpl<$Res, $Val extends ResponseBody>
    implements $ResponseBodyCopyWith<$Res> {
  _$ResponseBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = null,
    Object? options = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseBodyImplCopyWith<$Res>
    implements $ResponseBodyCopyWith<$Res> {
  factory _$$ResponseBodyImplCopyWith(
          _$ResponseBodyImpl value, $Res Function(_$ResponseBodyImpl) then) =
      __$$ResponseBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? status,
      String message,
      Map<String, dynamic>? options,
      Map<String, dynamic>? errors});
}

/// @nodoc
class __$$ResponseBodyImplCopyWithImpl<$Res>
    extends _$ResponseBodyCopyWithImpl<$Res, _$ResponseBodyImpl>
    implements _$$ResponseBodyImplCopyWith<$Res> {
  __$$ResponseBodyImplCopyWithImpl(
      _$ResponseBodyImpl _value, $Res Function(_$ResponseBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = null,
    Object? options = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$ResponseBodyImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseBodyImpl implements _ResponseBody {
  const _$ResponseBodyImpl(
      {this.status,
      this.message = "",
      final Map<String, dynamic>? options,
      final Map<String, dynamic>? errors})
      : _options = options,
        _errors = errors;

  factory _$ResponseBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseBodyImplFromJson(json);

  @override
  final int? status;
  @override
  @JsonKey()
  final String message;
  final Map<String, dynamic>? _options;
  @override
  Map<String, dynamic>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableMapView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _errors;
  @override
  Map<String, dynamic>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ResponseBody(status: $status, message: $message, options: $options, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseBodyImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      message,
      const DeepCollectionEquality().hash(_options),
      const DeepCollectionEquality().hash(_errors));

  /// Create a copy of ResponseBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseBodyImplCopyWith<_$ResponseBodyImpl> get copyWith =>
      __$$ResponseBodyImplCopyWithImpl<_$ResponseBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseBodyImplToJson(
      this,
    );
  }
}

abstract class _ResponseBody implements ResponseBody {
  const factory _ResponseBody(
      {final int? status,
      final String message,
      final Map<String, dynamic>? options,
      final Map<String, dynamic>? errors}) = _$ResponseBodyImpl;

  factory _ResponseBody.fromJson(Map<String, dynamic> json) =
      _$ResponseBodyImpl.fromJson;

  @override
  int? get status;
  @override
  String get message;
  @override
  Map<String, dynamic>? get options;
  @override
  Map<String, dynamic>? get errors;

  /// Create a copy of ResponseBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseBodyImplCopyWith<_$ResponseBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
