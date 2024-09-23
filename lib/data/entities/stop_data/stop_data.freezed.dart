// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stop_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StopDataEntity _$StopDataEntityFromJson(Map<String, dynamic> json) {
  return _StopDataEntity.fromJson(json);
}

/// @nodoc
mixin _$StopDataEntity {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_id')
  String? get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_data_id')
  String? get projectDataId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reason')
  String? get reason => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  @GenericDateJsonParserToMilliSec()
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'start')
  String? get start => throw _privateConstructorUsedError;
  @JsonKey(name: 'end')
  String? get end => throw _privateConstructorUsedError;
  @JsonKey(name: 'shift')
  String? get shift => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  @GenericDateJsonParserToMilliSec()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  @GenericDateJsonParserToMilliSec()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'machinery')
  String? get machinery => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_reason')
  String? get displayReason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StopDataEntityCopyWith<StopDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StopDataEntityCopyWith<$Res> {
  factory $StopDataEntityCopyWith(
          StopDataEntity value, $Res Function(StopDataEntity) then) =
      _$StopDataEntityCopyWithImpl<$Res, StopDataEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'project_id') String? projectId,
      @JsonKey(name: 'project_data_id') String? projectDataId,
      @JsonKey(name: 'reason') String? reason,
      @JsonKey(name: 'date') @GenericDateJsonParserToMilliSec() DateTime? date,
      @JsonKey(name: 'start') String? start,
      @JsonKey(name: 'end') String? end,
      @JsonKey(name: 'shift') String? shift,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'created_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? updatedAt,
      @JsonKey(name: 'machinery') String? machinery,
      @JsonKey(name: 'display_reason') String? displayReason});
}

/// @nodoc
class _$StopDataEntityCopyWithImpl<$Res, $Val extends StopDataEntity>
    implements $StopDataEntityCopyWith<$Res> {
  _$StopDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? projectId = freezed,
    Object? projectDataId = freezed,
    Object? reason = freezed,
    Object? date = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? shift = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? machinery = freezed,
    Object? displayReason = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
      projectDataId: freezed == projectDataId
          ? _value.projectDataId
          : projectDataId // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
      shift: freezed == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      machinery: freezed == machinery
          ? _value.machinery
          : machinery // ignore: cast_nullable_to_non_nullable
              as String?,
      displayReason: freezed == displayReason
          ? _value.displayReason
          : displayReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StopDataEntityImplCopyWith<$Res>
    implements $StopDataEntityCopyWith<$Res> {
  factory _$$StopDataEntityImplCopyWith(_$StopDataEntityImpl value,
          $Res Function(_$StopDataEntityImpl) then) =
      __$$StopDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'project_id') String? projectId,
      @JsonKey(name: 'project_data_id') String? projectDataId,
      @JsonKey(name: 'reason') String? reason,
      @JsonKey(name: 'date') @GenericDateJsonParserToMilliSec() DateTime? date,
      @JsonKey(name: 'start') String? start,
      @JsonKey(name: 'end') String? end,
      @JsonKey(name: 'shift') String? shift,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'created_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @GenericDateJsonParserToMilliSec()
      DateTime? updatedAt,
      @JsonKey(name: 'machinery') String? machinery,
      @JsonKey(name: 'display_reason') String? displayReason});
}

/// @nodoc
class __$$StopDataEntityImplCopyWithImpl<$Res>
    extends _$StopDataEntityCopyWithImpl<$Res, _$StopDataEntityImpl>
    implements _$$StopDataEntityImplCopyWith<$Res> {
  __$$StopDataEntityImplCopyWithImpl(
      _$StopDataEntityImpl _value, $Res Function(_$StopDataEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? projectId = freezed,
    Object? projectDataId = freezed,
    Object? reason = freezed,
    Object? date = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? shift = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? machinery = freezed,
    Object? displayReason = freezed,
  }) {
    return _then(_$StopDataEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
      projectDataId: freezed == projectDataId
          ? _value.projectDataId
          : projectDataId // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
      shift: freezed == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      machinery: freezed == machinery
          ? _value.machinery
          : machinery // ignore: cast_nullable_to_non_nullable
              as String?,
      displayReason: freezed == displayReason
          ? _value.displayReason
          : displayReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StopDataEntityImpl implements _StopDataEntity {
  const _$StopDataEntityImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'project_id') this.projectId,
      @JsonKey(name: 'project_data_id') this.projectDataId,
      @JsonKey(name: 'reason') this.reason,
      @JsonKey(name: 'date') @GenericDateJsonParserToMilliSec() this.date,
      @JsonKey(name: 'start') this.start,
      @JsonKey(name: 'end') this.end,
      @JsonKey(name: 'shift') this.shift,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'created_at')
      @GenericDateJsonParserToMilliSec()
      this.createdAt,
      @JsonKey(name: 'updated_at')
      @GenericDateJsonParserToMilliSec()
      this.updatedAt,
      @JsonKey(name: 'machinery') this.machinery,
      @JsonKey(name: 'display_reason') this.displayReason});

  factory _$StopDataEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$StopDataEntityImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'project_id')
  final String? projectId;
  @override
  @JsonKey(name: 'project_data_id')
  final String? projectDataId;
  @override
  @JsonKey(name: 'reason')
  final String? reason;
  @override
  @JsonKey(name: 'date')
  @GenericDateJsonParserToMilliSec()
  final DateTime? date;
  @override
  @JsonKey(name: 'start')
  final String? start;
  @override
  @JsonKey(name: 'end')
  final String? end;
  @override
  @JsonKey(name: 'shift')
  final String? shift;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'created_at')
  @GenericDateJsonParserToMilliSec()
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @GenericDateJsonParserToMilliSec()
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'machinery')
  final String? machinery;
  @override
  @JsonKey(name: 'display_reason')
  final String? displayReason;

  @override
  String toString() {
    return 'StopDataEntity(id: $id, projectId: $projectId, projectDataId: $projectDataId, reason: $reason, date: $date, start: $start, end: $end, shift: $shift, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, machinery: $machinery, displayReason: $displayReason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StopDataEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.projectDataId, projectDataId) ||
                other.projectDataId == projectDataId) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.shift, shift) || other.shift == shift) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.machinery, machinery) ||
                other.machinery == machinery) &&
            (identical(other.displayReason, displayReason) ||
                other.displayReason == displayReason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      projectId,
      projectDataId,
      reason,
      date,
      start,
      end,
      shift,
      description,
      createdAt,
      updatedAt,
      machinery,
      displayReason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StopDataEntityImplCopyWith<_$StopDataEntityImpl> get copyWith =>
      __$$StopDataEntityImplCopyWithImpl<_$StopDataEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StopDataEntityImplToJson(
      this,
    );
  }
}

abstract class _StopDataEntity implements StopDataEntity {
  const factory _StopDataEntity(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'project_id') final String? projectId,
          @JsonKey(name: 'project_data_id') final String? projectDataId,
          @JsonKey(name: 'reason') final String? reason,
          @JsonKey(name: 'date')
          @GenericDateJsonParserToMilliSec()
          final DateTime? date,
          @JsonKey(name: 'start') final String? start,
          @JsonKey(name: 'end') final String? end,
          @JsonKey(name: 'shift') final String? shift,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'created_at')
          @GenericDateJsonParserToMilliSec()
          final DateTime? createdAt,
          @JsonKey(name: 'updated_at')
          @GenericDateJsonParserToMilliSec()
          final DateTime? updatedAt,
          @JsonKey(name: 'machinery') final String? machinery,
          @JsonKey(name: 'display_reason') final String? displayReason}) =
      _$StopDataEntityImpl;

  factory _StopDataEntity.fromJson(Map<String, dynamic> json) =
      _$StopDataEntityImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'project_id')
  String? get projectId;
  @override
  @JsonKey(name: 'project_data_id')
  String? get projectDataId;
  @override
  @JsonKey(name: 'reason')
  String? get reason;
  @override
  @JsonKey(name: 'date')
  @GenericDateJsonParserToMilliSec()
  DateTime? get date;
  @override
  @JsonKey(name: 'start')
  String? get start;
  @override
  @JsonKey(name: 'end')
  String? get end;
  @override
  @JsonKey(name: 'shift')
  String? get shift;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'created_at')
  @GenericDateJsonParserToMilliSec()
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @GenericDateJsonParserToMilliSec()
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'machinery')
  String? get machinery;
  @override
  @JsonKey(name: 'display_reason')
  String? get displayReason;
  @override
  @JsonKey(ignore: true)
  _$$StopDataEntityImplCopyWith<_$StopDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
