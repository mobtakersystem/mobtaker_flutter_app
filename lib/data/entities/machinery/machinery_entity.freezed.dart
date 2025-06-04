// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'machinery_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MachineryEntity _$MachineryEntityFromJson(Map<String, dynamic> json) {
  return _MachineryEntity.fromJson(json);
}

/// @nodoc
mixin _$MachineryEntity {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand')
  String get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  @GenericDateJsonParserToMilliSec()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  @GenericDateJsonParserToMilliSec()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_machineries')
  Map<String, dynamic>? get projectMachineries =>
      throw _privateConstructorUsedError;

  /// Serializes this MachineryEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MachineryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MachineryEntityCopyWith<MachineryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MachineryEntityCopyWith<$Res> {
  factory $MachineryEntityCopyWith(
          MachineryEntity value, $Res Function(MachineryEntity) then) =
      _$MachineryEntityCopyWithImpl<$Res, MachineryEntity>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String code,
      @JsonKey(name: 'brand') String brand,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'created_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? updatedAt,
      @JsonKey(name: 'project_machineries')
      Map<String, dynamic>? projectMachineries});
}

/// @nodoc
class _$MachineryEntityCopyWithImpl<$Res, $Val extends MachineryEntity>
    implements $MachineryEntityCopyWith<$Res> {
  _$MachineryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MachineryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? brand = null,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? projectMachineries = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      projectMachineries: freezed == projectMachineries
          ? _value.projectMachineries
          : projectMachineries // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MachineryEntityImplCopyWith<$Res>
    implements $MachineryEntityCopyWith<$Res> {
  factory _$$MachineryEntityImplCopyWith(_$MachineryEntityImpl value,
          $Res Function(_$MachineryEntityImpl) then) =
      __$$MachineryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String code,
      @JsonKey(name: 'brand') String brand,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'created_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? updatedAt,
      @JsonKey(name: 'project_machineries')
      Map<String, dynamic>? projectMachineries});
}

/// @nodoc
class __$$MachineryEntityImplCopyWithImpl<$Res>
    extends _$MachineryEntityCopyWithImpl<$Res, _$MachineryEntityImpl>
    implements _$$MachineryEntityImplCopyWith<$Res> {
  __$$MachineryEntityImplCopyWithImpl(
      _$MachineryEntityImpl _value, $Res Function(_$MachineryEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MachineryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? brand = null,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? projectMachineries = freezed,
  }) {
    return _then(_$MachineryEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      projectMachineries: freezed == projectMachineries
          ? _value._projectMachineries
          : projectMachineries // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MachineryEntityImpl implements _MachineryEntity {
  const _$MachineryEntityImpl(
      {required this.id,
      @JsonKey(name: 'name') this.name = "",
      @JsonKey(name: 'code') this.code = "",
      @JsonKey(name: 'brand') this.brand = "",
      @JsonKey(name: 'status') this.status = "",
      @JsonKey(name: 'created_at')
      @GenericDateJsonParserToMilliSec()
      this.createdAt,
      @JsonKey(name: 'updated_at')
      @GenericDateJsonParserToMilliSec()
      this.updatedAt,
      @JsonKey(name: 'project_machineries')
      final Map<String, dynamic>? projectMachineries})
      : _projectMachineries = projectMachineries;

  factory _$MachineryEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MachineryEntityImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'code')
  final String code;
  @override
  @JsonKey(name: 'brand')
  final String brand;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'created_at')
  @GenericDateJsonParserToMilliSec()
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @GenericDateJsonParserToMilliSec()
  final DateTime? updatedAt;
  final Map<String, dynamic>? _projectMachineries;
  @override
  @JsonKey(name: 'project_machineries')
  Map<String, dynamic>? get projectMachineries {
    final value = _projectMachineries;
    if (value == null) return null;
    if (_projectMachineries is EqualUnmodifiableMapView)
      return _projectMachineries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MachineryEntity(id: $id, name: $name, code: $code, brand: $brand, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, projectMachineries: $projectMachineries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MachineryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._projectMachineries, _projectMachineries));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      code,
      brand,
      status,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_projectMachineries));

  /// Create a copy of MachineryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MachineryEntityImplCopyWith<_$MachineryEntityImpl> get copyWith =>
      __$$MachineryEntityImplCopyWithImpl<_$MachineryEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MachineryEntityImplToJson(
      this,
    );
  }
}

abstract class _MachineryEntity implements MachineryEntity {
  const factory _MachineryEntity(
      {required final String id,
      @JsonKey(name: 'name') final String name,
      @JsonKey(name: 'code') final String code,
      @JsonKey(name: 'brand') final String brand,
      @JsonKey(name: 'status') final String status,
      @JsonKey(name: 'created_at')
      @GenericDateJsonParserToMilliSec()
      final DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @GenericDateJsonParserToMilliSec()
      final DateTime? updatedAt,
      @JsonKey(name: 'project_machineries')
      final Map<String, dynamic>? projectMachineries}) = _$MachineryEntityImpl;

  factory _MachineryEntity.fromJson(Map<String, dynamic> json) =
      _$MachineryEntityImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'code')
  String get code;
  @override
  @JsonKey(name: 'brand')
  String get brand;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'created_at')
  @GenericDateJsonParserToMilliSec()
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @GenericDateJsonParserToMilliSec()
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'project_machineries')
  Map<String, dynamic>? get projectMachineries;

  /// Create a copy of MachineryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MachineryEntityImplCopyWith<_$MachineryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
