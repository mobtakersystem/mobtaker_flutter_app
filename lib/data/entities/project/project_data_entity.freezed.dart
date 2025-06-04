// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectDataEntity _$ProjectDataEntityFromJson(Map<String, dynamic> json) {
  return _ProjectDataEntity.fromJson(json);
}

/// @nodoc
mixin _$ProjectDataEntity {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_id')
  String get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'supervisor_id')
  String? get supervisorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'indicator_id')
  String? get indicatorId => throw _privateConstructorUsedError;
  @GenericDateJsonParserToMilliSec()
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'head_digger_id')
  String? get headDiggerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'machinery_id')
  String? get machineryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'digger_id')
  String? get diggerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'shift')
  String? get shift => throw _privateConstructorUsedError;
  @JsonKey(name: 'initial_meter')
  double get initialMeter => throw _privateConstructorUsedError;
  @JsonKey(name: 'final_meter')
  double get finalMeter => throw _privateConstructorUsedError;
  @JsonKey(name: 'machinery_working_hour')
  String get machineryWorkingHour => throw _privateConstructorUsedError;
  @JsonKey(name: 'machinery_working_hour_image')
  String? get machineryWorkingHourImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'stop_image')
  String get stopImage => throw _privateConstructorUsedError;
  List<ProjectWorkerEntity> get workers => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  @GenericDateJsonParserToMilliSec()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  @GenericDateJsonParserToMilliSec()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;
  String get headDigger => throw _privateConstructorUsedError;
  String get digger => throw _privateConstructorUsedError;
  String get machinery => throw _privateConstructorUsedError;
  String get supervisor => throw _privateConstructorUsedError;
  List<DocumentEntity> get images => throw _privateConstructorUsedError;
  List<StopDataEntity> get stops => throw _privateConstructorUsedError;
  @JsonKey(name: 'machinery_services')
  List<MachineryServiceDataEntity> get machineryServices =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'machinery_part_consumes')
  List<MachineryPartDataEntity> get machineryPartConsumes =>
      throw _privateConstructorUsedError; //local fields
  DataSyncStatus get syncStatus => throw _privateConstructorUsedError;
  DataSyncType get syncType => throw _privateConstructorUsedError;
  bool? get hasStop => throw _privateConstructorUsedError;
  bool? get hasMachineryServices => throw _privateConstructorUsedError;
  bool? get hasMachineryPartConsumes => throw _privateConstructorUsedError;
  DocumentEntity? get localMachineryWorkingHourImage =>
      throw _privateConstructorUsedError;
  DocumentEntity? get stopsImage => throw _privateConstructorUsedError;
  String? get lassSyncError => throw _privateConstructorUsedError;
  List<String>? get updatedDeletedImages => throw _privateConstructorUsedError;

  /// Serializes this ProjectDataEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectDataEntityCopyWith<ProjectDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDataEntityCopyWith<$Res> {
  factory $ProjectDataEntityCopyWith(
          ProjectDataEntity value, $Res Function(ProjectDataEntity) then) =
      _$ProjectDataEntityCopyWithImpl<$Res, ProjectDataEntity>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'project_id') String projectId,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'supervisor_id') String? supervisorId,
      @JsonKey(name: 'indicator_id') String? indicatorId,
      @GenericDateJsonParserToMilliSec() DateTime? date,
      @JsonKey(name: 'head_digger_id') String? headDiggerId,
      @JsonKey(name: 'machinery_id') String? machineryId,
      @JsonKey(name: 'digger_id') String? diggerId,
      @JsonKey(name: 'shift') String? shift,
      @JsonKey(name: 'initial_meter') double initialMeter,
      @JsonKey(name: 'final_meter') double finalMeter,
      @JsonKey(name: 'machinery_working_hour') String machineryWorkingHour,
      @JsonKey(name: 'machinery_working_hour_image')
      String? machineryWorkingHourImage,
      @JsonKey(name: 'stop_image') String stopImage,
      List<ProjectWorkerEntity> workers,
      String description,
      String status,
      @JsonKey(name: 'created_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? updatedAt,
      String user,
      String headDigger,
      String digger,
      String machinery,
      String supervisor,
      List<DocumentEntity> images,
      List<StopDataEntity> stops,
      @JsonKey(name: 'machinery_services')
      List<MachineryServiceDataEntity> machineryServices,
      @JsonKey(name: 'machinery_part_consumes')
      List<MachineryPartDataEntity> machineryPartConsumes,
      DataSyncStatus syncStatus,
      DataSyncType syncType,
      bool? hasStop,
      bool? hasMachineryServices,
      bool? hasMachineryPartConsumes,
      DocumentEntity? localMachineryWorkingHourImage,
      DocumentEntity? stopsImage,
      String? lassSyncError,
      List<String>? updatedDeletedImages});

  $DocumentEntityCopyWith<$Res>? get localMachineryWorkingHourImage;
  $DocumentEntityCopyWith<$Res>? get stopsImage;
}

/// @nodoc
class _$ProjectDataEntityCopyWithImpl<$Res, $Val extends ProjectDataEntity>
    implements $ProjectDataEntityCopyWith<$Res> {
  _$ProjectDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? projectId = null,
    Object? userId = freezed,
    Object? supervisorId = freezed,
    Object? indicatorId = freezed,
    Object? date = freezed,
    Object? headDiggerId = freezed,
    Object? machineryId = freezed,
    Object? diggerId = freezed,
    Object? shift = freezed,
    Object? initialMeter = null,
    Object? finalMeter = null,
    Object? machineryWorkingHour = null,
    Object? machineryWorkingHourImage = freezed,
    Object? stopImage = null,
    Object? workers = null,
    Object? description = null,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = null,
    Object? headDigger = null,
    Object? digger = null,
    Object? machinery = null,
    Object? supervisor = null,
    Object? images = null,
    Object? stops = null,
    Object? machineryServices = null,
    Object? machineryPartConsumes = null,
    Object? syncStatus = null,
    Object? syncType = null,
    Object? hasStop = freezed,
    Object? hasMachineryServices = freezed,
    Object? hasMachineryPartConsumes = freezed,
    Object? localMachineryWorkingHourImage = freezed,
    Object? stopsImage = freezed,
    Object? lassSyncError = freezed,
    Object? updatedDeletedImages = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      supervisorId: freezed == supervisorId
          ? _value.supervisorId
          : supervisorId // ignore: cast_nullable_to_non_nullable
              as String?,
      indicatorId: freezed == indicatorId
          ? _value.indicatorId
          : indicatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      headDiggerId: freezed == headDiggerId
          ? _value.headDiggerId
          : headDiggerId // ignore: cast_nullable_to_non_nullable
              as String?,
      machineryId: freezed == machineryId
          ? _value.machineryId
          : machineryId // ignore: cast_nullable_to_non_nullable
              as String?,
      diggerId: freezed == diggerId
          ? _value.diggerId
          : diggerId // ignore: cast_nullable_to_non_nullable
              as String?,
      shift: freezed == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as String?,
      initialMeter: null == initialMeter
          ? _value.initialMeter
          : initialMeter // ignore: cast_nullable_to_non_nullable
              as double,
      finalMeter: null == finalMeter
          ? _value.finalMeter
          : finalMeter // ignore: cast_nullable_to_non_nullable
              as double,
      machineryWorkingHour: null == machineryWorkingHour
          ? _value.machineryWorkingHour
          : machineryWorkingHour // ignore: cast_nullable_to_non_nullable
              as String,
      machineryWorkingHourImage: freezed == machineryWorkingHourImage
          ? _value.machineryWorkingHourImage
          : machineryWorkingHourImage // ignore: cast_nullable_to_non_nullable
              as String?,
      stopImage: null == stopImage
          ? _value.stopImage
          : stopImage // ignore: cast_nullable_to_non_nullable
              as String,
      workers: null == workers
          ? _value.workers
          : workers // ignore: cast_nullable_to_non_nullable
              as List<ProjectWorkerEntity>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      headDigger: null == headDigger
          ? _value.headDigger
          : headDigger // ignore: cast_nullable_to_non_nullable
              as String,
      digger: null == digger
          ? _value.digger
          : digger // ignore: cast_nullable_to_non_nullable
              as String,
      machinery: null == machinery
          ? _value.machinery
          : machinery // ignore: cast_nullable_to_non_nullable
              as String,
      supervisor: null == supervisor
          ? _value.supervisor
          : supervisor // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<DocumentEntity>,
      stops: null == stops
          ? _value.stops
          : stops // ignore: cast_nullable_to_non_nullable
              as List<StopDataEntity>,
      machineryServices: null == machineryServices
          ? _value.machineryServices
          : machineryServices // ignore: cast_nullable_to_non_nullable
              as List<MachineryServiceDataEntity>,
      machineryPartConsumes: null == machineryPartConsumes
          ? _value.machineryPartConsumes
          : machineryPartConsumes // ignore: cast_nullable_to_non_nullable
              as List<MachineryPartDataEntity>,
      syncStatus: null == syncStatus
          ? _value.syncStatus
          : syncStatus // ignore: cast_nullable_to_non_nullable
              as DataSyncStatus,
      syncType: null == syncType
          ? _value.syncType
          : syncType // ignore: cast_nullable_to_non_nullable
              as DataSyncType,
      hasStop: freezed == hasStop
          ? _value.hasStop
          : hasStop // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasMachineryServices: freezed == hasMachineryServices
          ? _value.hasMachineryServices
          : hasMachineryServices // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasMachineryPartConsumes: freezed == hasMachineryPartConsumes
          ? _value.hasMachineryPartConsumes
          : hasMachineryPartConsumes // ignore: cast_nullable_to_non_nullable
              as bool?,
      localMachineryWorkingHourImage: freezed == localMachineryWorkingHourImage
          ? _value.localMachineryWorkingHourImage
          : localMachineryWorkingHourImage // ignore: cast_nullable_to_non_nullable
              as DocumentEntity?,
      stopsImage: freezed == stopsImage
          ? _value.stopsImage
          : stopsImage // ignore: cast_nullable_to_non_nullable
              as DocumentEntity?,
      lassSyncError: freezed == lassSyncError
          ? _value.lassSyncError
          : lassSyncError // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedDeletedImages: freezed == updatedDeletedImages
          ? _value.updatedDeletedImages
          : updatedDeletedImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  /// Create a copy of ProjectDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DocumentEntityCopyWith<$Res>? get localMachineryWorkingHourImage {
    if (_value.localMachineryWorkingHourImage == null) {
      return null;
    }

    return $DocumentEntityCopyWith<$Res>(_value.localMachineryWorkingHourImage!,
        (value) {
      return _then(
          _value.copyWith(localMachineryWorkingHourImage: value) as $Val);
    });
  }

  /// Create a copy of ProjectDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DocumentEntityCopyWith<$Res>? get stopsImage {
    if (_value.stopsImage == null) {
      return null;
    }

    return $DocumentEntityCopyWith<$Res>(_value.stopsImage!, (value) {
      return _then(_value.copyWith(stopsImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectDataEntityImplCopyWith<$Res>
    implements $ProjectDataEntityCopyWith<$Res> {
  factory _$$ProjectDataEntityImplCopyWith(_$ProjectDataEntityImpl value,
          $Res Function(_$ProjectDataEntityImpl) then) =
      __$$ProjectDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'project_id') String projectId,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'supervisor_id') String? supervisorId,
      @JsonKey(name: 'indicator_id') String? indicatorId,
      @GenericDateJsonParserToMilliSec() DateTime? date,
      @JsonKey(name: 'head_digger_id') String? headDiggerId,
      @JsonKey(name: 'machinery_id') String? machineryId,
      @JsonKey(name: 'digger_id') String? diggerId,
      @JsonKey(name: 'shift') String? shift,
      @JsonKey(name: 'initial_meter') double initialMeter,
      @JsonKey(name: 'final_meter') double finalMeter,
      @JsonKey(name: 'machinery_working_hour') String machineryWorkingHour,
      @JsonKey(name: 'machinery_working_hour_image')
      String? machineryWorkingHourImage,
      @JsonKey(name: 'stop_image') String stopImage,
      List<ProjectWorkerEntity> workers,
      String description,
      String status,
      @JsonKey(name: 'created_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? updatedAt,
      String user,
      String headDigger,
      String digger,
      String machinery,
      String supervisor,
      List<DocumentEntity> images,
      List<StopDataEntity> stops,
      @JsonKey(name: 'machinery_services')
      List<MachineryServiceDataEntity> machineryServices,
      @JsonKey(name: 'machinery_part_consumes')
      List<MachineryPartDataEntity> machineryPartConsumes,
      DataSyncStatus syncStatus,
      DataSyncType syncType,
      bool? hasStop,
      bool? hasMachineryServices,
      bool? hasMachineryPartConsumes,
      DocumentEntity? localMachineryWorkingHourImage,
      DocumentEntity? stopsImage,
      String? lassSyncError,
      List<String>? updatedDeletedImages});

  @override
  $DocumentEntityCopyWith<$Res>? get localMachineryWorkingHourImage;
  @override
  $DocumentEntityCopyWith<$Res>? get stopsImage;
}

/// @nodoc
class __$$ProjectDataEntityImplCopyWithImpl<$Res>
    extends _$ProjectDataEntityCopyWithImpl<$Res, _$ProjectDataEntityImpl>
    implements _$$ProjectDataEntityImplCopyWith<$Res> {
  __$$ProjectDataEntityImplCopyWithImpl(_$ProjectDataEntityImpl _value,
      $Res Function(_$ProjectDataEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? projectId = null,
    Object? userId = freezed,
    Object? supervisorId = freezed,
    Object? indicatorId = freezed,
    Object? date = freezed,
    Object? headDiggerId = freezed,
    Object? machineryId = freezed,
    Object? diggerId = freezed,
    Object? shift = freezed,
    Object? initialMeter = null,
    Object? finalMeter = null,
    Object? machineryWorkingHour = null,
    Object? machineryWorkingHourImage = freezed,
    Object? stopImage = null,
    Object? workers = null,
    Object? description = null,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = null,
    Object? headDigger = null,
    Object? digger = null,
    Object? machinery = null,
    Object? supervisor = null,
    Object? images = null,
    Object? stops = null,
    Object? machineryServices = null,
    Object? machineryPartConsumes = null,
    Object? syncStatus = null,
    Object? syncType = null,
    Object? hasStop = freezed,
    Object? hasMachineryServices = freezed,
    Object? hasMachineryPartConsumes = freezed,
    Object? localMachineryWorkingHourImage = freezed,
    Object? stopsImage = freezed,
    Object? lassSyncError = freezed,
    Object? updatedDeletedImages = freezed,
  }) {
    return _then(_$ProjectDataEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      supervisorId: freezed == supervisorId
          ? _value.supervisorId
          : supervisorId // ignore: cast_nullable_to_non_nullable
              as String?,
      indicatorId: freezed == indicatorId
          ? _value.indicatorId
          : indicatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      headDiggerId: freezed == headDiggerId
          ? _value.headDiggerId
          : headDiggerId // ignore: cast_nullable_to_non_nullable
              as String?,
      machineryId: freezed == machineryId
          ? _value.machineryId
          : machineryId // ignore: cast_nullable_to_non_nullable
              as String?,
      diggerId: freezed == diggerId
          ? _value.diggerId
          : diggerId // ignore: cast_nullable_to_non_nullable
              as String?,
      shift: freezed == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as String?,
      initialMeter: null == initialMeter
          ? _value.initialMeter
          : initialMeter // ignore: cast_nullable_to_non_nullable
              as double,
      finalMeter: null == finalMeter
          ? _value.finalMeter
          : finalMeter // ignore: cast_nullable_to_non_nullable
              as double,
      machineryWorkingHour: null == machineryWorkingHour
          ? _value.machineryWorkingHour
          : machineryWorkingHour // ignore: cast_nullable_to_non_nullable
              as String,
      machineryWorkingHourImage: freezed == machineryWorkingHourImage
          ? _value.machineryWorkingHourImage
          : machineryWorkingHourImage // ignore: cast_nullable_to_non_nullable
              as String?,
      stopImage: null == stopImage
          ? _value.stopImage
          : stopImage // ignore: cast_nullable_to_non_nullable
              as String,
      workers: null == workers
          ? _value._workers
          : workers // ignore: cast_nullable_to_non_nullable
              as List<ProjectWorkerEntity>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      headDigger: null == headDigger
          ? _value.headDigger
          : headDigger // ignore: cast_nullable_to_non_nullable
              as String,
      digger: null == digger
          ? _value.digger
          : digger // ignore: cast_nullable_to_non_nullable
              as String,
      machinery: null == machinery
          ? _value.machinery
          : machinery // ignore: cast_nullable_to_non_nullable
              as String,
      supervisor: null == supervisor
          ? _value.supervisor
          : supervisor // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<DocumentEntity>,
      stops: null == stops
          ? _value._stops
          : stops // ignore: cast_nullable_to_non_nullable
              as List<StopDataEntity>,
      machineryServices: null == machineryServices
          ? _value._machineryServices
          : machineryServices // ignore: cast_nullable_to_non_nullable
              as List<MachineryServiceDataEntity>,
      machineryPartConsumes: null == machineryPartConsumes
          ? _value._machineryPartConsumes
          : machineryPartConsumes // ignore: cast_nullable_to_non_nullable
              as List<MachineryPartDataEntity>,
      syncStatus: null == syncStatus
          ? _value.syncStatus
          : syncStatus // ignore: cast_nullable_to_non_nullable
              as DataSyncStatus,
      syncType: null == syncType
          ? _value.syncType
          : syncType // ignore: cast_nullable_to_non_nullable
              as DataSyncType,
      hasStop: freezed == hasStop
          ? _value.hasStop
          : hasStop // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasMachineryServices: freezed == hasMachineryServices
          ? _value.hasMachineryServices
          : hasMachineryServices // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasMachineryPartConsumes: freezed == hasMachineryPartConsumes
          ? _value.hasMachineryPartConsumes
          : hasMachineryPartConsumes // ignore: cast_nullable_to_non_nullable
              as bool?,
      localMachineryWorkingHourImage: freezed == localMachineryWorkingHourImage
          ? _value.localMachineryWorkingHourImage
          : localMachineryWorkingHourImage // ignore: cast_nullable_to_non_nullable
              as DocumentEntity?,
      stopsImage: freezed == stopsImage
          ? _value.stopsImage
          : stopsImage // ignore: cast_nullable_to_non_nullable
              as DocumentEntity?,
      lassSyncError: freezed == lassSyncError
          ? _value.lassSyncError
          : lassSyncError // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedDeletedImages: freezed == updatedDeletedImages
          ? _value._updatedDeletedImages
          : updatedDeletedImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProjectDataEntityImpl implements _ProjectDataEntity {
  const _$ProjectDataEntityImpl(
      {required this.id,
      @JsonKey(name: 'project_id') required this.projectId,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'supervisor_id') this.supervisorId,
      @JsonKey(name: 'indicator_id') this.indicatorId,
      @GenericDateJsonParserToMilliSec() this.date,
      @JsonKey(name: 'head_digger_id') this.headDiggerId,
      @JsonKey(name: 'machinery_id') this.machineryId,
      @JsonKey(name: 'digger_id') this.diggerId,
      @JsonKey(name: 'shift') this.shift,
      @JsonKey(name: 'initial_meter') this.initialMeter = 0.0,
      @JsonKey(name: 'final_meter') this.finalMeter = 0.0,
      @JsonKey(name: 'machinery_working_hour') this.machineryWorkingHour = "",
      @JsonKey(name: 'machinery_working_hour_image')
      this.machineryWorkingHourImage,
      @JsonKey(name: 'stop_image') this.stopImage = "",
      final List<ProjectWorkerEntity> workers = const [],
      this.description = "",
      this.status = "",
      @JsonKey(name: 'created_at')
      @GenericDateJsonParserToMilliSec()
      this.createdAt,
      @JsonKey(name: 'updated_at')
      @GenericDateJsonParserToMilliSec()
      this.updatedAt,
      this.user = "",
      this.headDigger = "",
      this.digger = "",
      this.machinery = "",
      this.supervisor = "",
      final List<DocumentEntity> images = const [],
      final List<StopDataEntity> stops = const [],
      @JsonKey(name: 'machinery_services')
      final List<MachineryServiceDataEntity> machineryServices = const [],
      @JsonKey(name: 'machinery_part_consumes')
      final List<MachineryPartDataEntity> machineryPartConsumes = const [],
      this.syncStatus = DataSyncStatus.none,
      this.syncType = DataSyncType.none,
      this.hasStop,
      this.hasMachineryServices,
      this.hasMachineryPartConsumes,
      this.localMachineryWorkingHourImage,
      this.stopsImage,
      this.lassSyncError,
      final List<String>? updatedDeletedImages})
      : _workers = workers,
        _images = images,
        _stops = stops,
        _machineryServices = machineryServices,
        _machineryPartConsumes = machineryPartConsumes,
        _updatedDeletedImages = updatedDeletedImages;

  factory _$ProjectDataEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectDataEntityImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'project_id')
  final String projectId;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'supervisor_id')
  final String? supervisorId;
  @override
  @JsonKey(name: 'indicator_id')
  final String? indicatorId;
  @override
  @GenericDateJsonParserToMilliSec()
  final DateTime? date;
  @override
  @JsonKey(name: 'head_digger_id')
  final String? headDiggerId;
  @override
  @JsonKey(name: 'machinery_id')
  final String? machineryId;
  @override
  @JsonKey(name: 'digger_id')
  final String? diggerId;
  @override
  @JsonKey(name: 'shift')
  final String? shift;
  @override
  @JsonKey(name: 'initial_meter')
  final double initialMeter;
  @override
  @JsonKey(name: 'final_meter')
  final double finalMeter;
  @override
  @JsonKey(name: 'machinery_working_hour')
  final String machineryWorkingHour;
  @override
  @JsonKey(name: 'machinery_working_hour_image')
  final String? machineryWorkingHourImage;
  @override
  @JsonKey(name: 'stop_image')
  final String stopImage;
  final List<ProjectWorkerEntity> _workers;
  @override
  @JsonKey()
  List<ProjectWorkerEntity> get workers {
    if (_workers is EqualUnmodifiableListView) return _workers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workers);
  }

  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey(name: 'created_at')
  @GenericDateJsonParserToMilliSec()
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @GenericDateJsonParserToMilliSec()
  final DateTime? updatedAt;
  @override
  @JsonKey()
  final String user;
  @override
  @JsonKey()
  final String headDigger;
  @override
  @JsonKey()
  final String digger;
  @override
  @JsonKey()
  final String machinery;
  @override
  @JsonKey()
  final String supervisor;
  final List<DocumentEntity> _images;
  @override
  @JsonKey()
  List<DocumentEntity> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<StopDataEntity> _stops;
  @override
  @JsonKey()
  List<StopDataEntity> get stops {
    if (_stops is EqualUnmodifiableListView) return _stops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stops);
  }

  final List<MachineryServiceDataEntity> _machineryServices;
  @override
  @JsonKey(name: 'machinery_services')
  List<MachineryServiceDataEntity> get machineryServices {
    if (_machineryServices is EqualUnmodifiableListView)
      return _machineryServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_machineryServices);
  }

  final List<MachineryPartDataEntity> _machineryPartConsumes;
  @override
  @JsonKey(name: 'machinery_part_consumes')
  List<MachineryPartDataEntity> get machineryPartConsumes {
    if (_machineryPartConsumes is EqualUnmodifiableListView)
      return _machineryPartConsumes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_machineryPartConsumes);
  }

//local fields
  @override
  @JsonKey()
  final DataSyncStatus syncStatus;
  @override
  @JsonKey()
  final DataSyncType syncType;
  @override
  final bool? hasStop;
  @override
  final bool? hasMachineryServices;
  @override
  final bool? hasMachineryPartConsumes;
  @override
  final DocumentEntity? localMachineryWorkingHourImage;
  @override
  final DocumentEntity? stopsImage;
  @override
  final String? lassSyncError;
  final List<String>? _updatedDeletedImages;
  @override
  List<String>? get updatedDeletedImages {
    final value = _updatedDeletedImages;
    if (value == null) return null;
    if (_updatedDeletedImages is EqualUnmodifiableListView)
      return _updatedDeletedImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProjectDataEntity(id: $id, projectId: $projectId, userId: $userId, supervisorId: $supervisorId, indicatorId: $indicatorId, date: $date, headDiggerId: $headDiggerId, machineryId: $machineryId, diggerId: $diggerId, shift: $shift, initialMeter: $initialMeter, finalMeter: $finalMeter, machineryWorkingHour: $machineryWorkingHour, machineryWorkingHourImage: $machineryWorkingHourImage, stopImage: $stopImage, workers: $workers, description: $description, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, headDigger: $headDigger, digger: $digger, machinery: $machinery, supervisor: $supervisor, images: $images, stops: $stops, machineryServices: $machineryServices, machineryPartConsumes: $machineryPartConsumes, syncStatus: $syncStatus, syncType: $syncType, hasStop: $hasStop, hasMachineryServices: $hasMachineryServices, hasMachineryPartConsumes: $hasMachineryPartConsumes, localMachineryWorkingHourImage: $localMachineryWorkingHourImage, stopsImage: $stopsImage, lassSyncError: $lassSyncError, updatedDeletedImages: $updatedDeletedImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectDataEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.supervisorId, supervisorId) ||
                other.supervisorId == supervisorId) &&
            (identical(other.indicatorId, indicatorId) ||
                other.indicatorId == indicatorId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.headDiggerId, headDiggerId) ||
                other.headDiggerId == headDiggerId) &&
            (identical(other.machineryId, machineryId) ||
                other.machineryId == machineryId) &&
            (identical(other.diggerId, diggerId) ||
                other.diggerId == diggerId) &&
            (identical(other.shift, shift) || other.shift == shift) &&
            (identical(other.initialMeter, initialMeter) ||
                other.initialMeter == initialMeter) &&
            (identical(other.finalMeter, finalMeter) ||
                other.finalMeter == finalMeter) &&
            (identical(other.machineryWorkingHour, machineryWorkingHour) ||
                other.machineryWorkingHour == machineryWorkingHour) &&
            (identical(other.machineryWorkingHourImage,
                    machineryWorkingHourImage) ||
                other.machineryWorkingHourImage == machineryWorkingHourImage) &&
            (identical(other.stopImage, stopImage) ||
                other.stopImage == stopImage) &&
            const DeepCollectionEquality().equals(other._workers, _workers) &&
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
            (identical(other.digger, digger) || other.digger == digger) &&
            (identical(other.machinery, machinery) ||
                other.machinery == machinery) &&
            (identical(other.supervisor, supervisor) ||
                other.supervisor == supervisor) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._stops, _stops) &&
            const DeepCollectionEquality()
                .equals(other._machineryServices, _machineryServices) &&
            const DeepCollectionEquality()
                .equals(other._machineryPartConsumes, _machineryPartConsumes) &&
            (identical(other.syncStatus, syncStatus) ||
                other.syncStatus == syncStatus) &&
            (identical(other.syncType, syncType) ||
                other.syncType == syncType) &&
            (identical(other.hasStop, hasStop) || other.hasStop == hasStop) &&
            (identical(other.hasMachineryServices, hasMachineryServices) ||
                other.hasMachineryServices == hasMachineryServices) &&
            (identical(other.hasMachineryPartConsumes, hasMachineryPartConsumes) ||
                other.hasMachineryPartConsumes == hasMachineryPartConsumes) &&
            (identical(other.localMachineryWorkingHourImage,
                    localMachineryWorkingHourImage) ||
                other.localMachineryWorkingHourImage ==
                    localMachineryWorkingHourImage) &&
            (identical(other.stopsImage, stopsImage) ||
                other.stopsImage == stopsImage) &&
            (identical(other.lassSyncError, lassSyncError) ||
                other.lassSyncError == lassSyncError) &&
            const DeepCollectionEquality()
                .equals(other._updatedDeletedImages, _updatedDeletedImages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        projectId,
        userId,
        supervisorId,
        indicatorId,
        date,
        headDiggerId,
        machineryId,
        diggerId,
        shift,
        initialMeter,
        finalMeter,
        machineryWorkingHour,
        machineryWorkingHourImage,
        stopImage,
        const DeepCollectionEquality().hash(_workers),
        description,
        status,
        createdAt,
        updatedAt,
        user,
        headDigger,
        digger,
        machinery,
        supervisor,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_stops),
        const DeepCollectionEquality().hash(_machineryServices),
        const DeepCollectionEquality().hash(_machineryPartConsumes),
        syncStatus,
        syncType,
        hasStop,
        hasMachineryServices,
        hasMachineryPartConsumes,
        localMachineryWorkingHourImage,
        stopsImage,
        lassSyncError,
        const DeepCollectionEquality().hash(_updatedDeletedImages)
      ]);

  /// Create a copy of ProjectDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectDataEntityImplCopyWith<_$ProjectDataEntityImpl> get copyWith =>
      __$$ProjectDataEntityImplCopyWithImpl<_$ProjectDataEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectDataEntityImplToJson(
      this,
    );
  }
}

abstract class _ProjectDataEntity implements ProjectDataEntity {
  const factory _ProjectDataEntity(
      {required final String id,
      @JsonKey(name: 'project_id') required final String projectId,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'supervisor_id') final String? supervisorId,
      @JsonKey(name: 'indicator_id') final String? indicatorId,
      @GenericDateJsonParserToMilliSec() final DateTime? date,
      @JsonKey(name: 'head_digger_id') final String? headDiggerId,
      @JsonKey(name: 'machinery_id') final String? machineryId,
      @JsonKey(name: 'digger_id') final String? diggerId,
      @JsonKey(name: 'shift') final String? shift,
      @JsonKey(name: 'initial_meter') final double initialMeter,
      @JsonKey(name: 'final_meter') final double finalMeter,
      @JsonKey(name: 'machinery_working_hour')
      final String machineryWorkingHour,
      @JsonKey(name: 'machinery_working_hour_image')
      final String? machineryWorkingHourImage,
      @JsonKey(name: 'stop_image') final String stopImage,
      final List<ProjectWorkerEntity> workers,
      final String description,
      final String status,
      @JsonKey(name: 'created_at')
      @GenericDateJsonParserToMilliSec()
      final DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @GenericDateJsonParserToMilliSec()
      final DateTime? updatedAt,
      final String user,
      final String headDigger,
      final String digger,
      final String machinery,
      final String supervisor,
      final List<DocumentEntity> images,
      final List<StopDataEntity> stops,
      @JsonKey(name: 'machinery_services')
      final List<MachineryServiceDataEntity> machineryServices,
      @JsonKey(name: 'machinery_part_consumes')
      final List<MachineryPartDataEntity> machineryPartConsumes,
      final DataSyncStatus syncStatus,
      final DataSyncType syncType,
      final bool? hasStop,
      final bool? hasMachineryServices,
      final bool? hasMachineryPartConsumes,
      final DocumentEntity? localMachineryWorkingHourImage,
      final DocumentEntity? stopsImage,
      final String? lassSyncError,
      final List<String>? updatedDeletedImages}) = _$ProjectDataEntityImpl;

  factory _ProjectDataEntity.fromJson(Map<String, dynamic> json) =
      _$ProjectDataEntityImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'project_id')
  String get projectId;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'supervisor_id')
  String? get supervisorId;
  @override
  @JsonKey(name: 'indicator_id')
  String? get indicatorId;
  @override
  @GenericDateJsonParserToMilliSec()
  DateTime? get date;
  @override
  @JsonKey(name: 'head_digger_id')
  String? get headDiggerId;
  @override
  @JsonKey(name: 'machinery_id')
  String? get machineryId;
  @override
  @JsonKey(name: 'digger_id')
  String? get diggerId;
  @override
  @JsonKey(name: 'shift')
  String? get shift;
  @override
  @JsonKey(name: 'initial_meter')
  double get initialMeter;
  @override
  @JsonKey(name: 'final_meter')
  double get finalMeter;
  @override
  @JsonKey(name: 'machinery_working_hour')
  String get machineryWorkingHour;
  @override
  @JsonKey(name: 'machinery_working_hour_image')
  String? get machineryWorkingHourImage;
  @override
  @JsonKey(name: 'stop_image')
  String get stopImage;
  @override
  List<ProjectWorkerEntity> get workers;
  @override
  String get description;
  @override
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
  String get user;
  @override
  String get headDigger;
  @override
  String get digger;
  @override
  String get machinery;
  @override
  String get supervisor;
  @override
  List<DocumentEntity> get images;
  @override
  List<StopDataEntity> get stops;
  @override
  @JsonKey(name: 'machinery_services')
  List<MachineryServiceDataEntity> get machineryServices;
  @override
  @JsonKey(name: 'machinery_part_consumes')
  List<MachineryPartDataEntity> get machineryPartConsumes; //local fields
  @override
  DataSyncStatus get syncStatus;
  @override
  DataSyncType get syncType;
  @override
  bool? get hasStop;
  @override
  bool? get hasMachineryServices;
  @override
  bool? get hasMachineryPartConsumes;
  @override
  DocumentEntity? get localMachineryWorkingHourImage;
  @override
  DocumentEntity? get stopsImage;
  @override
  String? get lassSyncError;
  @override
  List<String>? get updatedDeletedImages;

  /// Create a copy of ProjectDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectDataEntityImplCopyWith<_$ProjectDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
