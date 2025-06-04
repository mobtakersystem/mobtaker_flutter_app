// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supervisor_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SupervisorEntity _$SupervisorEntityFromJson(Map<String, dynamic> json) {
  return _SupervisorEntity.fromJson(json);
}

/// @nodoc
mixin _$SupervisorEntity {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'national_code')
  String get nationalCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'father_name')
  String get fatherName => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_date')
  @DateJsonParser()
  DateTime? get birthDate => throw _privateConstructorUsedError;
  String get cellphone => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_login')
  String? get lastLogin => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_attempts')
  int get numberOfAttempts => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_at')
  @GenericDateJsonParserToMilliSec()
  DateTime? get availableAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  @GenericDateJsonParserToMilliSec()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  @GenericDateJsonParserToMilliSec()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_supervisors')
  Map<String, dynamic>? get projectSupervisors =>
      throw _privateConstructorUsedError;

  /// Serializes this SupervisorEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupervisorEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupervisorEntityCopyWith<SupervisorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupervisorEntityCopyWith<$Res> {
  factory $SupervisorEntityCopyWith(
          SupervisorEntity value, $Res Function(SupervisorEntity) then) =
      _$SupervisorEntityCopyWithImpl<$Res, SupervisorEntity>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'national_code') String nationalCode,
      @JsonKey(name: 'father_name') String fatherName,
      @JsonKey(name: 'birth_date') @DateJsonParser() DateTime? birthDate,
      String cellphone,
      String gender,
      @JsonKey(name: 'profile_image') String? profileImage,
      String status,
      String email,
      @JsonKey(name: 'last_login') String? lastLogin,
      @JsonKey(name: 'number_of_attempts') int numberOfAttempts,
      @JsonKey(name: 'available_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? availableAt,
      @JsonKey(name: 'created_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? updatedAt,
      @JsonKey(name: 'project_supervisors')
      Map<String, dynamic>? projectSupervisors});
}

/// @nodoc
class _$SupervisorEntityCopyWithImpl<$Res, $Val extends SupervisorEntity>
    implements $SupervisorEntityCopyWith<$Res> {
  _$SupervisorEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupervisorEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? fullName = null,
    Object? nationalCode = null,
    Object? fatherName = null,
    Object? birthDate = freezed,
    Object? cellphone = null,
    Object? gender = null,
    Object? profileImage = freezed,
    Object? status = null,
    Object? email = null,
    Object? lastLogin = freezed,
    Object? numberOfAttempts = null,
    Object? availableAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? projectSupervisors = freezed,
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
      nationalCode: null == nationalCode
          ? _value.nationalCode
          : nationalCode // ignore: cast_nullable_to_non_nullable
              as String,
      fatherName: null == fatherName
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cellphone: null == cellphone
          ? _value.cellphone
          : cellphone // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfAttempts: null == numberOfAttempts
          ? _value.numberOfAttempts
          : numberOfAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      availableAt: freezed == availableAt
          ? _value.availableAt
          : availableAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      projectSupervisors: freezed == projectSupervisors
          ? _value.projectSupervisors
          : projectSupervisors // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupervisorEntityImplCopyWith<$Res>
    implements $SupervisorEntityCopyWith<$Res> {
  factory _$$SupervisorEntityImplCopyWith(_$SupervisorEntityImpl value,
          $Res Function(_$SupervisorEntityImpl) then) =
      __$$SupervisorEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'national_code') String nationalCode,
      @JsonKey(name: 'father_name') String fatherName,
      @JsonKey(name: 'birth_date') @DateJsonParser() DateTime? birthDate,
      String cellphone,
      String gender,
      @JsonKey(name: 'profile_image') String? profileImage,
      String status,
      String email,
      @JsonKey(name: 'last_login') String? lastLogin,
      @JsonKey(name: 'number_of_attempts') int numberOfAttempts,
      @JsonKey(name: 'available_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? availableAt,
      @JsonKey(name: 'created_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? updatedAt,
      @JsonKey(name: 'project_supervisors')
      Map<String, dynamic>? projectSupervisors});
}

/// @nodoc
class __$$SupervisorEntityImplCopyWithImpl<$Res>
    extends _$SupervisorEntityCopyWithImpl<$Res, _$SupervisorEntityImpl>
    implements _$$SupervisorEntityImplCopyWith<$Res> {
  __$$SupervisorEntityImplCopyWithImpl(_$SupervisorEntityImpl _value,
      $Res Function(_$SupervisorEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupervisorEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? fullName = null,
    Object? nationalCode = null,
    Object? fatherName = null,
    Object? birthDate = freezed,
    Object? cellphone = null,
    Object? gender = null,
    Object? profileImage = freezed,
    Object? status = null,
    Object? email = null,
    Object? lastLogin = freezed,
    Object? numberOfAttempts = null,
    Object? availableAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? projectSupervisors = freezed,
  }) {
    return _then(_$SupervisorEntityImpl(
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
      nationalCode: null == nationalCode
          ? _value.nationalCode
          : nationalCode // ignore: cast_nullable_to_non_nullable
              as String,
      fatherName: null == fatherName
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cellphone: null == cellphone
          ? _value.cellphone
          : cellphone // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfAttempts: null == numberOfAttempts
          ? _value.numberOfAttempts
          : numberOfAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      availableAt: freezed == availableAt
          ? _value.availableAt
          : availableAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      projectSupervisors: freezed == projectSupervisors
          ? _value._projectSupervisors
          : projectSupervisors // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupervisorEntityImpl implements _SupervisorEntity {
  const _$SupervisorEntityImpl(
      {required this.id,
      @JsonKey(name: 'first_name') this.firstName = "",
      @JsonKey(name: 'last_name') this.lastName = "",
      @JsonKey(name: 'full_name') this.fullName = "",
      @JsonKey(name: 'national_code') this.nationalCode = "",
      @JsonKey(name: 'father_name') this.fatherName = "",
      @JsonKey(name: 'birth_date') @DateJsonParser() this.birthDate,
      this.cellphone = "",
      this.gender = "",
      @JsonKey(name: 'profile_image') this.profileImage,
      this.status = "",
      this.email = "",
      @JsonKey(name: 'last_login') this.lastLogin,
      @JsonKey(name: 'number_of_attempts') this.numberOfAttempts = 0,
      @JsonKey(name: 'available_at')
      @GenericDateJsonParserToMilliSec()
      this.availableAt,
      @JsonKey(name: 'created_at')
      @GenericDateJsonParserToMilliSec()
      this.createdAt,
      @JsonKey(name: 'updated_at')
      @GenericDateJsonParserToMilliSec()
      this.updatedAt,
      @JsonKey(name: 'project_supervisors')
      final Map<String, dynamic>? projectSupervisors})
      : _projectSupervisors = projectSupervisors;

  factory _$SupervisorEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupervisorEntityImplFromJson(json);

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
  @JsonKey(name: 'national_code')
  final String nationalCode;
  @override
  @JsonKey(name: 'father_name')
  final String fatherName;
  @override
  @JsonKey(name: 'birth_date')
  @DateJsonParser()
  final DateTime? birthDate;
  @override
  @JsonKey()
  final String cellphone;
  @override
  @JsonKey()
  final String gender;
  @override
  @JsonKey(name: 'profile_image')
  final String? profileImage;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey(name: 'last_login')
  final String? lastLogin;
  @override
  @JsonKey(name: 'number_of_attempts')
  final int numberOfAttempts;
  @override
  @JsonKey(name: 'available_at')
  @GenericDateJsonParserToMilliSec()
  final DateTime? availableAt;
  @override
  @JsonKey(name: 'created_at')
  @GenericDateJsonParserToMilliSec()
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @GenericDateJsonParserToMilliSec()
  final DateTime? updatedAt;
  final Map<String, dynamic>? _projectSupervisors;
  @override
  @JsonKey(name: 'project_supervisors')
  Map<String, dynamic>? get projectSupervisors {
    final value = _projectSupervisors;
    if (value == null) return null;
    if (_projectSupervisors is EqualUnmodifiableMapView)
      return _projectSupervisors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SupervisorEntity(id: $id, firstName: $firstName, lastName: $lastName, fullName: $fullName, nationalCode: $nationalCode, fatherName: $fatherName, birthDate: $birthDate, cellphone: $cellphone, gender: $gender, profileImage: $profileImage, status: $status, email: $email, lastLogin: $lastLogin, numberOfAttempts: $numberOfAttempts, availableAt: $availableAt, createdAt: $createdAt, updatedAt: $updatedAt, projectSupervisors: $projectSupervisors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupervisorEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.nationalCode, nationalCode) ||
                other.nationalCode == nationalCode) &&
            (identical(other.fatherName, fatherName) ||
                other.fatherName == fatherName) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.cellphone, cellphone) ||
                other.cellphone == cellphone) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin) &&
            (identical(other.numberOfAttempts, numberOfAttempts) ||
                other.numberOfAttempts == numberOfAttempts) &&
            (identical(other.availableAt, availableAt) ||
                other.availableAt == availableAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._projectSupervisors, _projectSupervisors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      firstName,
      lastName,
      fullName,
      nationalCode,
      fatherName,
      birthDate,
      cellphone,
      gender,
      profileImage,
      status,
      email,
      lastLogin,
      numberOfAttempts,
      availableAt,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_projectSupervisors));

  /// Create a copy of SupervisorEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupervisorEntityImplCopyWith<_$SupervisorEntityImpl> get copyWith =>
      __$$SupervisorEntityImplCopyWithImpl<_$SupervisorEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupervisorEntityImplToJson(
      this,
    );
  }
}

abstract class _SupervisorEntity implements SupervisorEntity {
  const factory _SupervisorEntity(
      {required final String id,
      @JsonKey(name: 'first_name') final String firstName,
      @JsonKey(name: 'last_name') final String lastName,
      @JsonKey(name: 'full_name') final String fullName,
      @JsonKey(name: 'national_code') final String nationalCode,
      @JsonKey(name: 'father_name') final String fatherName,
      @JsonKey(name: 'birth_date') @DateJsonParser() final DateTime? birthDate,
      final String cellphone,
      final String gender,
      @JsonKey(name: 'profile_image') final String? profileImage,
      final String status,
      final String email,
      @JsonKey(name: 'last_login') final String? lastLogin,
      @JsonKey(name: 'number_of_attempts') final int numberOfAttempts,
      @JsonKey(name: 'available_at')
      @GenericDateJsonParserToMilliSec()
      final DateTime? availableAt,
      @JsonKey(name: 'created_at')
      @GenericDateJsonParserToMilliSec()
      final DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @GenericDateJsonParserToMilliSec()
      final DateTime? updatedAt,
      @JsonKey(name: 'project_supervisors')
      final Map<String, dynamic>? projectSupervisors}) = _$SupervisorEntityImpl;

  factory _SupervisorEntity.fromJson(Map<String, dynamic> json) =
      _$SupervisorEntityImpl.fromJson;

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
  @override
  @JsonKey(name: 'national_code')
  String get nationalCode;
  @override
  @JsonKey(name: 'father_name')
  String get fatherName;
  @override
  @JsonKey(name: 'birth_date')
  @DateJsonParser()
  DateTime? get birthDate;
  @override
  String get cellphone;
  @override
  String get gender;
  @override
  @JsonKey(name: 'profile_image')
  String? get profileImage;
  @override
  String get status;
  @override
  String get email;
  @override
  @JsonKey(name: 'last_login')
  String? get lastLogin;
  @override
  @JsonKey(name: 'number_of_attempts')
  int get numberOfAttempts;
  @override
  @JsonKey(name: 'available_at')
  @GenericDateJsonParserToMilliSec()
  DateTime? get availableAt;
  @override
  @JsonKey(name: 'created_at')
  @GenericDateJsonParserToMilliSec()
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @GenericDateJsonParserToMilliSec()
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'project_supervisors')
  Map<String, dynamic>? get projectSupervisors;

  /// Create a copy of SupervisorEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupervisorEntityImplCopyWith<_$SupervisorEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
