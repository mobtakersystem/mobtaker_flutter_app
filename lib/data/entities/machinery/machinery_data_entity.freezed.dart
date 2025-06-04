// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'machinery_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MachineryServiceDataEntity _$MachineryServiceDataEntityFromJson(
    Map<String, dynamic> json) {
  return _MachineryServiceDataEntity.fromJson(json);
}

/// @nodoc
mixin _$MachineryServiceDataEntity {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_id')
  String? get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_data_id')
  String? get projectDataId => throw _privateConstructorUsedError;
  @JsonKey(name: 'machinery_id')
  String? get machineryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  @GenericDateJsonParserToMilliSec()
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'supervisor_id')
  String? get supervisorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'head_digger_id')
  String? get headDiggerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_type')
  int? get serviceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'machinery_working_hour')
  String? get machineryWorkingHour => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  @GenericDateJsonParserToMilliSec()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  @GenericDateJsonParserToMilliSec()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  String? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'headDigger')
  String? get headDigger => throw _privateConstructorUsedError;
  @JsonKey(name: 'machinery')
  String? get machinery => throw _privateConstructorUsedError;
  @JsonKey(name: 'supervisor')
  String? get supervisor => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'project')
  String? get project => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<DocumentEntity> get images => throw _privateConstructorUsedError;

  /// Serializes this MachineryServiceDataEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MachineryServiceDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MachineryServiceDataEntityCopyWith<MachineryServiceDataEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MachineryServiceDataEntityCopyWith<$Res> {
  factory $MachineryServiceDataEntityCopyWith(MachineryServiceDataEntity value,
          $Res Function(MachineryServiceDataEntity) then) =
      _$MachineryServiceDataEntityCopyWithImpl<$Res,
          MachineryServiceDataEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'project_id') String? projectId,
      @JsonKey(name: 'project_data_id') String? projectDataId,
      @JsonKey(name: 'machinery_id') String? machineryId,
      @JsonKey(name: 'date') @GenericDateJsonParserToMilliSec() DateTime? date,
      @JsonKey(name: 'supervisor_id') String? supervisorId,
      @JsonKey(name: 'head_digger_id') String? headDiggerId,
      @JsonKey(name: 'service_type') int? serviceType,
      @JsonKey(name: 'machinery_working_hour') String? machineryWorkingHour,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'created_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? updatedAt,
      @JsonKey(name: 'user') String? user,
      @JsonKey(name: 'headDigger') String? headDigger,
      @JsonKey(name: 'machinery') String? machinery,
      @JsonKey(name: 'supervisor') String? supervisor,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'project') String? project,
      @JsonKey(name: 'images') List<DocumentEntity> images});
}

/// @nodoc
class _$MachineryServiceDataEntityCopyWithImpl<$Res,
        $Val extends MachineryServiceDataEntity>
    implements $MachineryServiceDataEntityCopyWith<$Res> {
  _$MachineryServiceDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MachineryServiceDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = freezed,
    Object? projectId = freezed,
    Object? projectDataId = freezed,
    Object? machineryId = freezed,
    Object? date = freezed,
    Object? supervisorId = freezed,
    Object? headDiggerId = freezed,
    Object? serviceType = freezed,
    Object? machineryWorkingHour = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? headDigger = freezed,
    Object? machinery = freezed,
    Object? supervisor = freezed,
    Object? type = freezed,
    Object? project = freezed,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
      projectDataId: freezed == projectDataId
          ? _value.projectDataId
          : projectDataId // ignore: cast_nullable_to_non_nullable
              as String?,
      machineryId: freezed == machineryId
          ? _value.machineryId
          : machineryId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      supervisorId: freezed == supervisorId
          ? _value.supervisorId
          : supervisorId // ignore: cast_nullable_to_non_nullable
              as String?,
      headDiggerId: freezed == headDiggerId
          ? _value.headDiggerId
          : headDiggerId // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as int?,
      machineryWorkingHour: freezed == machineryWorkingHour
          ? _value.machineryWorkingHour
          : machineryWorkingHour // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      headDigger: freezed == headDigger
          ? _value.headDigger
          : headDigger // ignore: cast_nullable_to_non_nullable
              as String?,
      machinery: freezed == machinery
          ? _value.machinery
          : machinery // ignore: cast_nullable_to_non_nullable
              as String?,
      supervisor: freezed == supervisor
          ? _value.supervisor
          : supervisor // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<DocumentEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MachineryServiceDataEntityImplCopyWith<$Res>
    implements $MachineryServiceDataEntityCopyWith<$Res> {
  factory _$$MachineryServiceDataEntityImplCopyWith(
          _$MachineryServiceDataEntityImpl value,
          $Res Function(_$MachineryServiceDataEntityImpl) then) =
      __$$MachineryServiceDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'project_id') String? projectId,
      @JsonKey(name: 'project_data_id') String? projectDataId,
      @JsonKey(name: 'machinery_id') String? machineryId,
      @JsonKey(name: 'date') @GenericDateJsonParserToMilliSec() DateTime? date,
      @JsonKey(name: 'supervisor_id') String? supervisorId,
      @JsonKey(name: 'head_digger_id') String? headDiggerId,
      @JsonKey(name: 'service_type') int? serviceType,
      @JsonKey(name: 'machinery_working_hour') String? machineryWorkingHour,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'created_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? updatedAt,
      @JsonKey(name: 'user') String? user,
      @JsonKey(name: 'headDigger') String? headDigger,
      @JsonKey(name: 'machinery') String? machinery,
      @JsonKey(name: 'supervisor') String? supervisor,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'project') String? project,
      @JsonKey(name: 'images') List<DocumentEntity> images});
}

/// @nodoc
class __$$MachineryServiceDataEntityImplCopyWithImpl<$Res>
    extends _$MachineryServiceDataEntityCopyWithImpl<$Res,
        _$MachineryServiceDataEntityImpl>
    implements _$$MachineryServiceDataEntityImplCopyWith<$Res> {
  __$$MachineryServiceDataEntityImplCopyWithImpl(
      _$MachineryServiceDataEntityImpl _value,
      $Res Function(_$MachineryServiceDataEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MachineryServiceDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = freezed,
    Object? projectId = freezed,
    Object? projectDataId = freezed,
    Object? machineryId = freezed,
    Object? date = freezed,
    Object? supervisorId = freezed,
    Object? headDiggerId = freezed,
    Object? serviceType = freezed,
    Object? machineryWorkingHour = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? headDigger = freezed,
    Object? machinery = freezed,
    Object? supervisor = freezed,
    Object? type = freezed,
    Object? project = freezed,
    Object? images = null,
  }) {
    return _then(_$MachineryServiceDataEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
      projectDataId: freezed == projectDataId
          ? _value.projectDataId
          : projectDataId // ignore: cast_nullable_to_non_nullable
              as String?,
      machineryId: freezed == machineryId
          ? _value.machineryId
          : machineryId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      supervisorId: freezed == supervisorId
          ? _value.supervisorId
          : supervisorId // ignore: cast_nullable_to_non_nullable
              as String?,
      headDiggerId: freezed == headDiggerId
          ? _value.headDiggerId
          : headDiggerId // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as int?,
      machineryWorkingHour: freezed == machineryWorkingHour
          ? _value.machineryWorkingHour
          : machineryWorkingHour // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      headDigger: freezed == headDigger
          ? _value.headDigger
          : headDigger // ignore: cast_nullable_to_non_nullable
              as String?,
      machinery: freezed == machinery
          ? _value.machinery
          : machinery // ignore: cast_nullable_to_non_nullable
              as String?,
      supervisor: freezed == supervisor
          ? _value.supervisor
          : supervisor // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<DocumentEntity>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MachineryServiceDataEntityImpl implements _MachineryServiceDataEntity {
  const _$MachineryServiceDataEntityImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'project_id') this.projectId,
      @JsonKey(name: 'project_data_id') this.projectDataId,
      @JsonKey(name: 'machinery_id') this.machineryId,
      @JsonKey(name: 'date') @GenericDateJsonParserToMilliSec() this.date,
      @JsonKey(name: 'supervisor_id') this.supervisorId,
      @JsonKey(name: 'head_digger_id') this.headDiggerId,
      @JsonKey(name: 'service_type') this.serviceType,
      @JsonKey(name: 'machinery_working_hour') this.machineryWorkingHour,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'created_at')
      @GenericDateJsonParserToMilliSec()
      this.createdAt,
      @JsonKey(name: 'updated_at')
      @GenericDateJsonParserToMilliSec()
      this.updatedAt,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'headDigger') this.headDigger,
      @JsonKey(name: 'machinery') this.machinery,
      @JsonKey(name: 'supervisor') this.supervisor,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'project') this.project,
      @JsonKey(name: 'images') final List<DocumentEntity> images = const []})
      : _images = images;

  factory _$MachineryServiceDataEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MachineryServiceDataEntityImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'project_id')
  final String? projectId;
  @override
  @JsonKey(name: 'project_data_id')
  final String? projectDataId;
  @override
  @JsonKey(name: 'machinery_id')
  final String? machineryId;
  @override
  @JsonKey(name: 'date')
  @GenericDateJsonParserToMilliSec()
  final DateTime? date;
  @override
  @JsonKey(name: 'supervisor_id')
  final String? supervisorId;
  @override
  @JsonKey(name: 'head_digger_id')
  final String? headDiggerId;
  @override
  @JsonKey(name: 'service_type')
  final int? serviceType;
  @override
  @JsonKey(name: 'machinery_working_hour')
  final String? machineryWorkingHour;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'created_at')
  @GenericDateJsonParserToMilliSec()
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @GenericDateJsonParserToMilliSec()
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'user')
  final String? user;
  @override
  @JsonKey(name: 'headDigger')
  final String? headDigger;
  @override
  @JsonKey(name: 'machinery')
  final String? machinery;
  @override
  @JsonKey(name: 'supervisor')
  final String? supervisor;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'project')
  final String? project;
  final List<DocumentEntity> _images;
  @override
  @JsonKey(name: 'images')
  List<DocumentEntity> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'MachineryServiceDataEntity(id: $id, userId: $userId, projectId: $projectId, projectDataId: $projectDataId, machineryId: $machineryId, date: $date, supervisorId: $supervisorId, headDiggerId: $headDiggerId, serviceType: $serviceType, machineryWorkingHour: $machineryWorkingHour, description: $description, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, headDigger: $headDigger, machinery: $machinery, supervisor: $supervisor, type: $type, project: $project, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MachineryServiceDataEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.projectDataId, projectDataId) ||
                other.projectDataId == projectDataId) &&
            (identical(other.machineryId, machineryId) ||
                other.machineryId == machineryId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.supervisorId, supervisorId) ||
                other.supervisorId == supervisorId) &&
            (identical(other.headDiggerId, headDiggerId) ||
                other.headDiggerId == headDiggerId) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            (identical(other.machineryWorkingHour, machineryWorkingHour) ||
                other.machineryWorkingHour == machineryWorkingHour) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.headDigger, headDigger) ||
                other.headDigger == headDigger) &&
            (identical(other.machinery, machinery) ||
                other.machinery == machinery) &&
            (identical(other.supervisor, supervisor) ||
                other.supervisor == supervisor) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.project, project) || other.project == project) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        projectId,
        projectDataId,
        machineryId,
        date,
        supervisorId,
        headDiggerId,
        serviceType,
        machineryWorkingHour,
        description,
        status,
        createdAt,
        updatedAt,
        user,
        headDigger,
        machinery,
        supervisor,
        type,
        project,
        const DeepCollectionEquality().hash(_images)
      ]);

  /// Create a copy of MachineryServiceDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MachineryServiceDataEntityImplCopyWith<_$MachineryServiceDataEntityImpl>
      get copyWith => __$$MachineryServiceDataEntityImplCopyWithImpl<
          _$MachineryServiceDataEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MachineryServiceDataEntityImplToJson(
      this,
    );
  }
}

abstract class _MachineryServiceDataEntity
    implements MachineryServiceDataEntity {
  const factory _MachineryServiceDataEntity(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'user_id') final String? userId,
          @JsonKey(name: 'project_id') final String? projectId,
          @JsonKey(name: 'project_data_id') final String? projectDataId,
          @JsonKey(name: 'machinery_id') final String? machineryId,
          @JsonKey(name: 'date')
          @GenericDateJsonParserToMilliSec()
          final DateTime? date,
          @JsonKey(name: 'supervisor_id') final String? supervisorId,
          @JsonKey(name: 'head_digger_id') final String? headDiggerId,
          @JsonKey(name: 'service_type') final int? serviceType,
          @JsonKey(name: 'machinery_working_hour')
          final String? machineryWorkingHour,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'created_at')
          @GenericDateJsonParserToMilliSec()
          final DateTime? createdAt,
          @JsonKey(name: 'updated_at')
          @GenericDateJsonParserToMilliSec()
          final DateTime? updatedAt,
          @JsonKey(name: 'user') final String? user,
          @JsonKey(name: 'headDigger') final String? headDigger,
          @JsonKey(name: 'machinery') final String? machinery,
          @JsonKey(name: 'supervisor') final String? supervisor,
          @JsonKey(name: 'type') final String? type,
          @JsonKey(name: 'project') final String? project,
          @JsonKey(name: 'images') final List<DocumentEntity> images}) =
      _$MachineryServiceDataEntityImpl;

  factory _MachineryServiceDataEntity.fromJson(Map<String, dynamic> json) =
      _$MachineryServiceDataEntityImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'project_id')
  String? get projectId;
  @override
  @JsonKey(name: 'project_data_id')
  String? get projectDataId;
  @override
  @JsonKey(name: 'machinery_id')
  String? get machineryId;
  @override
  @JsonKey(name: 'date')
  @GenericDateJsonParserToMilliSec()
  DateTime? get date;
  @override
  @JsonKey(name: 'supervisor_id')
  String? get supervisorId;
  @override
  @JsonKey(name: 'head_digger_id')
  String? get headDiggerId;
  @override
  @JsonKey(name: 'service_type')
  int? get serviceType;
  @override
  @JsonKey(name: 'machinery_working_hour')
  String? get machineryWorkingHour;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'created_at')
  @GenericDateJsonParserToMilliSec()
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @GenericDateJsonParserToMilliSec()
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'user')
  String? get user;
  @override
  @JsonKey(name: 'headDigger')
  String? get headDigger;
  @override
  @JsonKey(name: 'machinery')
  String? get machinery;
  @override
  @JsonKey(name: 'supervisor')
  String? get supervisor;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'project')
  String? get project;
  @override
  @JsonKey(name: 'images')
  List<DocumentEntity> get images;

  /// Create a copy of MachineryServiceDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MachineryServiceDataEntityImplCopyWith<_$MachineryServiceDataEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
