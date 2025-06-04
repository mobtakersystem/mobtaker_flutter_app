// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'worker_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkerEntity _$WorkerEntityFromJson(Map<String, dynamic> json) {
  return _WorkerEntity.fromJson(json);
}

/// @nodoc
mixin _$WorkerEntity {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;

  /// Serializes this WorkerEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkerEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkerEntityCopyWith<WorkerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkerEntityCopyWith<$Res> {
  factory $WorkerEntityCopyWith(
          WorkerEntity value, $Res Function(WorkerEntity) then) =
      _$WorkerEntityCopyWithImpl<$Res, WorkerEntity>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'full_name') String fullName});
}

/// @nodoc
class _$WorkerEntityCopyWithImpl<$Res, $Val extends WorkerEntity>
    implements $WorkerEntityCopyWith<$Res> {
  _$WorkerEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkerEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? fullName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkerEntityImplCopyWith<$Res>
    implements $WorkerEntityCopyWith<$Res> {
  factory _$$WorkerEntityImplCopyWith(
          _$WorkerEntityImpl value, $Res Function(_$WorkerEntityImpl) then) =
      __$$WorkerEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'full_name') String fullName});
}

/// @nodoc
class __$$WorkerEntityImplCopyWithImpl<$Res>
    extends _$WorkerEntityCopyWithImpl<$Res, _$WorkerEntityImpl>
    implements _$$WorkerEntityImplCopyWith<$Res> {
  __$$WorkerEntityImplCopyWithImpl(
      _$WorkerEntityImpl _value, $Res Function(_$WorkerEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkerEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? fullName = null,
  }) {
    return _then(_$WorkerEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkerEntityImpl implements _WorkerEntity {
  const _$WorkerEntityImpl(
      {required this.id,
      @JsonKey(name: 'first_name') this.firstName = "",
      @JsonKey(name: 'last_name') this.lastName = "",
      @JsonKey(name: 'full_name') this.fullName = ""});

  factory _$WorkerEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkerEntityImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;

  @override
  String toString() {
    return 'WorkerEntity(id: $id, firstName: $firstName, lastName: $lastName, fullName: $fullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkerEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, firstName, lastName, fullName);

  /// Create a copy of WorkerEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkerEntityImplCopyWith<_$WorkerEntityImpl> get copyWith =>
      __$$WorkerEntityImplCopyWithImpl<_$WorkerEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkerEntityImplToJson(
      this,
    );
  }
}

abstract class _WorkerEntity implements WorkerEntity {
  const factory _WorkerEntity(
      {required final String id,
      @JsonKey(name: 'first_name') final String firstName,
      @JsonKey(name: 'last_name') final String lastName,
      @JsonKey(name: 'full_name') final String fullName}) = _$WorkerEntityImpl;

  factory _WorkerEntity.fromJson(Map<String, dynamic> json) =
      _$WorkerEntityImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;

  /// Create a copy of WorkerEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkerEntityImplCopyWith<_$WorkerEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProjectWorkerEntity _$ProjectWorkerEntityFromJson(Map<String, dynamic> json) {
  return _ProjectWorkerEntity.fromJson(json);
}

/// @nodoc
mixin _$ProjectWorkerEntity {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this ProjectWorkerEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectWorkerEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectWorkerEntityCopyWith<ProjectWorkerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectWorkerEntityCopyWith<$Res> {
  factory $ProjectWorkerEntityCopyWith(
          ProjectWorkerEntity value, $Res Function(ProjectWorkerEntity) then) =
      _$ProjectWorkerEntityCopyWithImpl<$Res, ProjectWorkerEntity>;
  @useResult
  $Res call({String id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$ProjectWorkerEntityCopyWithImpl<$Res, $Val extends ProjectWorkerEntity>
    implements $ProjectWorkerEntityCopyWith<$Res> {
  _$ProjectWorkerEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectWorkerEntity
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
abstract class _$$ProjectWorkerEntityImplCopyWith<$Res>
    implements $ProjectWorkerEntityCopyWith<$Res> {
  factory _$$ProjectWorkerEntityImplCopyWith(_$ProjectWorkerEntityImpl value,
          $Res Function(_$ProjectWorkerEntityImpl) then) =
      __$$ProjectWorkerEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$ProjectWorkerEntityImplCopyWithImpl<$Res>
    extends _$ProjectWorkerEntityCopyWithImpl<$Res, _$ProjectWorkerEntityImpl>
    implements _$$ProjectWorkerEntityImplCopyWith<$Res> {
  __$$ProjectWorkerEntityImplCopyWithImpl(_$ProjectWorkerEntityImpl _value,
      $Res Function(_$ProjectWorkerEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectWorkerEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$ProjectWorkerEntityImpl(
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
class _$ProjectWorkerEntityImpl implements _ProjectWorkerEntity {
  const _$ProjectWorkerEntityImpl(
      {required this.id, @JsonKey(name: 'name') this.name = ""});

  factory _$ProjectWorkerEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectWorkerEntityImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'ProjectWorkerEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectWorkerEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of ProjectWorkerEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectWorkerEntityImplCopyWith<_$ProjectWorkerEntityImpl> get copyWith =>
      __$$ProjectWorkerEntityImplCopyWithImpl<_$ProjectWorkerEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectWorkerEntityImplToJson(
      this,
    );
  }
}

abstract class _ProjectWorkerEntity implements ProjectWorkerEntity {
  const factory _ProjectWorkerEntity(
      {required final String id,
      @JsonKey(name: 'name') final String name}) = _$ProjectWorkerEntityImpl;

  factory _ProjectWorkerEntity.fromJson(Map<String, dynamic> json) =
      _$ProjectWorkerEntityImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of ProjectWorkerEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectWorkerEntityImplCopyWith<_$ProjectWorkerEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
