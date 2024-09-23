// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'indicator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IndicatorEntity _$IndicatorEntityFromJson(Map<String, dynamic> json) {
  return _IndicatorEntity.fromJson(json);
}

/// @nodoc
mixin _$IndicatorEntity {
  String get id => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndicatorEntityCopyWith<IndicatorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndicatorEntityCopyWith<$Res> {
  factory $IndicatorEntityCopyWith(
          IndicatorEntity value, $Res Function(IndicatorEntity) then) =
      _$IndicatorEntityCopyWithImpl<$Res, IndicatorEntity>;
  @useResult
  $Res call(
      {String id,
      String symbol,
      @JsonKey(name: 'display_name') String displayName});
}

/// @nodoc
class _$IndicatorEntityCopyWithImpl<$Res, $Val extends IndicatorEntity>
    implements $IndicatorEntityCopyWith<$Res> {
  _$IndicatorEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? displayName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndicatorEntityImplCopyWith<$Res>
    implements $IndicatorEntityCopyWith<$Res> {
  factory _$$IndicatorEntityImplCopyWith(_$IndicatorEntityImpl value,
          $Res Function(_$IndicatorEntityImpl) then) =
      __$$IndicatorEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String symbol,
      @JsonKey(name: 'display_name') String displayName});
}

/// @nodoc
class __$$IndicatorEntityImplCopyWithImpl<$Res>
    extends _$IndicatorEntityCopyWithImpl<$Res, _$IndicatorEntityImpl>
    implements _$$IndicatorEntityImplCopyWith<$Res> {
  __$$IndicatorEntityImplCopyWithImpl(
      _$IndicatorEntityImpl _value, $Res Function(_$IndicatorEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? displayName = null,
  }) {
    return _then(_$IndicatorEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndicatorEntityImpl implements _IndicatorEntity {
  const _$IndicatorEntityImpl(
      {required this.id,
      this.symbol = "",
      @JsonKey(name: 'display_name') this.displayName = ""});

  factory _$IndicatorEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndicatorEntityImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String symbol;
  @override
  @JsonKey(name: 'display_name')
  final String displayName;

  @override
  String toString() {
    return 'IndicatorEntity(id: $id, symbol: $symbol, displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndicatorEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, symbol, displayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndicatorEntityImplCopyWith<_$IndicatorEntityImpl> get copyWith =>
      __$$IndicatorEntityImplCopyWithImpl<_$IndicatorEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndicatorEntityImplToJson(
      this,
    );
  }
}

abstract class _IndicatorEntity implements IndicatorEntity {
  const factory _IndicatorEntity(
          {required final String id,
          final String symbol,
          @JsonKey(name: 'display_name') final String displayName}) =
      _$IndicatorEntityImpl;

  factory _IndicatorEntity.fromJson(Map<String, dynamic> json) =
      _$IndicatorEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get symbol;
  @override
  @JsonKey(name: 'display_name')
  String get displayName;
  @override
  @JsonKey(ignore: true)
  _$$IndicatorEntityImplCopyWith<_$IndicatorEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
