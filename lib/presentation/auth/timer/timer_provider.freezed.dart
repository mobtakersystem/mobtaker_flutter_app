// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CountDownState {
  String get formattedTime => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String formattedTime) start,
    required TResult Function(String formattedTime) end,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formattedTime)? start,
    TResult? Function(String formattedTime)? end,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formattedTime)? start,
    TResult Function(String formattedTime)? end,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountStartDownState value) start,
    required TResult Function(_CountDownEndState value) end,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountStartDownState value)? start,
    TResult? Function(_CountDownEndState value)? end,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountStartDownState value)? start,
    TResult Function(_CountDownEndState value)? end,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountDownStateCopyWith<CountDownState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountDownStateCopyWith<$Res> {
  factory $CountDownStateCopyWith(
          CountDownState value, $Res Function(CountDownState) then) =
      _$CountDownStateCopyWithImpl<$Res, CountDownState>;
  @useResult
  $Res call({String formattedTime});
}

/// @nodoc
class _$CountDownStateCopyWithImpl<$Res, $Val extends CountDownState>
    implements $CountDownStateCopyWith<$Res> {
  _$CountDownStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formattedTime = null,
  }) {
    return _then(_value.copyWith(
      formattedTime: null == formattedTime
          ? _value.formattedTime
          : formattedTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountStartDownStateImplCopyWith<$Res>
    implements $CountDownStateCopyWith<$Res> {
  factory _$$CountStartDownStateImplCopyWith(_$CountStartDownStateImpl value,
          $Res Function(_$CountStartDownStateImpl) then) =
      __$$CountStartDownStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String formattedTime});
}

/// @nodoc
class __$$CountStartDownStateImplCopyWithImpl<$Res>
    extends _$CountDownStateCopyWithImpl<$Res, _$CountStartDownStateImpl>
    implements _$$CountStartDownStateImplCopyWith<$Res> {
  __$$CountStartDownStateImplCopyWithImpl(_$CountStartDownStateImpl _value,
      $Res Function(_$CountStartDownStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formattedTime = null,
  }) {
    return _then(_$CountStartDownStateImpl(
      null == formattedTime
          ? _value.formattedTime
          : formattedTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CountStartDownStateImpl implements _CountStartDownState {
  const _$CountStartDownStateImpl(this.formattedTime);

  @override
  final String formattedTime;

  @override
  String toString() {
    return 'CountDownState.start(formattedTime: $formattedTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountStartDownStateImpl &&
            (identical(other.formattedTime, formattedTime) ||
                other.formattedTime == formattedTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formattedTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountStartDownStateImplCopyWith<_$CountStartDownStateImpl> get copyWith =>
      __$$CountStartDownStateImplCopyWithImpl<_$CountStartDownStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String formattedTime) start,
    required TResult Function(String formattedTime) end,
  }) {
    return start(formattedTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formattedTime)? start,
    TResult? Function(String formattedTime)? end,
  }) {
    return start?.call(formattedTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formattedTime)? start,
    TResult Function(String formattedTime)? end,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(formattedTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountStartDownState value) start,
    required TResult Function(_CountDownEndState value) end,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountStartDownState value)? start,
    TResult? Function(_CountDownEndState value)? end,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountStartDownState value)? start,
    TResult Function(_CountDownEndState value)? end,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _CountStartDownState implements CountDownState {
  const factory _CountStartDownState(final String formattedTime) =
      _$CountStartDownStateImpl;

  @override
  String get formattedTime;
  @override
  @JsonKey(ignore: true)
  _$$CountStartDownStateImplCopyWith<_$CountStartDownStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CountDownEndStateImplCopyWith<$Res>
    implements $CountDownStateCopyWith<$Res> {
  factory _$$CountDownEndStateImplCopyWith(_$CountDownEndStateImpl value,
          $Res Function(_$CountDownEndStateImpl) then) =
      __$$CountDownEndStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String formattedTime});
}

/// @nodoc
class __$$CountDownEndStateImplCopyWithImpl<$Res>
    extends _$CountDownStateCopyWithImpl<$Res, _$CountDownEndStateImpl>
    implements _$$CountDownEndStateImplCopyWith<$Res> {
  __$$CountDownEndStateImplCopyWithImpl(_$CountDownEndStateImpl _value,
      $Res Function(_$CountDownEndStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formattedTime = null,
  }) {
    return _then(_$CountDownEndStateImpl(
      null == formattedTime
          ? _value.formattedTime
          : formattedTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CountDownEndStateImpl implements _CountDownEndState {
  const _$CountDownEndStateImpl(this.formattedTime);

  @override
  final String formattedTime;

  @override
  String toString() {
    return 'CountDownState.end(formattedTime: $formattedTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountDownEndStateImpl &&
            (identical(other.formattedTime, formattedTime) ||
                other.formattedTime == formattedTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formattedTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountDownEndStateImplCopyWith<_$CountDownEndStateImpl> get copyWith =>
      __$$CountDownEndStateImplCopyWithImpl<_$CountDownEndStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String formattedTime) start,
    required TResult Function(String formattedTime) end,
  }) {
    return end(formattedTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String formattedTime)? start,
    TResult? Function(String formattedTime)? end,
  }) {
    return end?.call(formattedTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String formattedTime)? start,
    TResult Function(String formattedTime)? end,
    required TResult orElse(),
  }) {
    if (end != null) {
      return end(formattedTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountStartDownState value) start,
    required TResult Function(_CountDownEndState value) end,
  }) {
    return end(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountStartDownState value)? start,
    TResult? Function(_CountDownEndState value)? end,
  }) {
    return end?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountStartDownState value)? start,
    TResult Function(_CountDownEndState value)? end,
    required TResult orElse(),
  }) {
    if (end != null) {
      return end(this);
    }
    return orElse();
  }
}

abstract class _CountDownEndState implements CountDownState {
  const factory _CountDownEndState(final String formattedTime) =
      _$CountDownEndStateImpl;

  @override
  String get formattedTime;
  @override
  @JsonKey(ignore: true)
  _$$CountDownEndStateImplCopyWith<_$CountDownEndStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
