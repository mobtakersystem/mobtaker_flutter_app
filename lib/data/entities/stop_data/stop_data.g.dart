// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stop_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StopDataEntityImpl _$$StopDataEntityImplFromJson(Map<String, dynamic> json) =>
    _$StopDataEntityImpl(
      id: json['id'] as String,
      projectId: json['project_id'] as String?,
      projectDataId: json['project_data_id'] as String?,
      reason: json['reason'] as String?,
      date: const GenericDateJsonParserToMilliSec().fromJson(json['date']),
      start: json['start'] as String?,
      end: json['end'] as String?,
      shift: json['shift'] as String?,
      description: json['description'] as String?,
      createdAt:
          const GenericDateJsonParserToMilliSec().fromJson(json['created_at']),
      updatedAt:
          const GenericDateJsonParserToMilliSec().fromJson(json['updated_at']),
      machinery: json['machinery'] as String?,
      displayReason: json['display_reason'] as String?,
    );

Map<String, dynamic> _$$StopDataEntityImplToJson(
        _$StopDataEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'project_id': instance.projectId,
      'project_data_id': instance.projectDataId,
      'reason': instance.reason,
      'date': const GenericDateJsonParserToMilliSec().toJson(instance.date),
      'start': instance.start,
      'end': instance.end,
      'shift': instance.shift,
      'description': instance.description,
      'created_at':
          const GenericDateJsonParserToMilliSec().toJson(instance.createdAt),
      'updated_at':
          const GenericDateJsonParserToMilliSec().toJson(instance.updatedAt),
      'machinery': instance.machinery,
      'display_reason': instance.displayReason,
    };
