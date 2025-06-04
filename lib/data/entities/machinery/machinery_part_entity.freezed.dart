// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'machinery_part_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MachineryPartEntity _$MachineryPartEntityFromJson(Map<String, dynamic> json) {
  return _MachineryPartEntity.fromJson(json);
}

/// @nodoc
mixin _$MachineryPartEntity {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this MachineryPartEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MachineryPartEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MachineryPartEntityCopyWith<MachineryPartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MachineryPartEntityCopyWith<$Res> {
  factory $MachineryPartEntityCopyWith(
          MachineryPartEntity value, $Res Function(MachineryPartEntity) then) =
      _$MachineryPartEntityCopyWithImpl<$Res, MachineryPartEntity>;
  @useResult
  $Res call({String id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$MachineryPartEntityCopyWithImpl<$Res, $Val extends MachineryPartEntity>
    implements $MachineryPartEntityCopyWith<$Res> {
  _$MachineryPartEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MachineryPartEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MachineryPartEntityImplCopyWith<$Res>
    implements $MachineryPartEntityCopyWith<$Res> {
  factory _$$MachineryPartEntityImplCopyWith(_$MachineryPartEntityImpl value,
          $Res Function(_$MachineryPartEntityImpl) then) =
      __$$MachineryPartEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$MachineryPartEntityImplCopyWithImpl<$Res>
    extends _$MachineryPartEntityCopyWithImpl<$Res, _$MachineryPartEntityImpl>
    implements _$$MachineryPartEntityImplCopyWith<$Res> {
  __$$MachineryPartEntityImplCopyWithImpl(_$MachineryPartEntityImpl _value,
      $Res Function(_$MachineryPartEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MachineryPartEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$MachineryPartEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MachineryPartEntityImpl implements _MachineryPartEntity {
  const _$MachineryPartEntityImpl(
      {required this.id, @JsonKey(name: 'name') this.name = ""});

  factory _$MachineryPartEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MachineryPartEntityImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'MachineryPartEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MachineryPartEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of MachineryPartEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MachineryPartEntityImplCopyWith<_$MachineryPartEntityImpl> get copyWith =>
      __$$MachineryPartEntityImplCopyWithImpl<_$MachineryPartEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MachineryPartEntityImplToJson(
      this,
    );
  }
}

abstract class _MachineryPartEntity implements MachineryPartEntity {
  const factory _MachineryPartEntity(
      {required final String id,
      @JsonKey(name: 'name') final String name}) = _$MachineryPartEntityImpl;

  factory _MachineryPartEntity.fromJson(Map<String, dynamic> json) =
      _$MachineryPartEntityImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of MachineryPartEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MachineryPartEntityImplCopyWith<_$MachineryPartEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
