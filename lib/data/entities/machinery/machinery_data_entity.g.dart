// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'machinery_data_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MachineryServiceDataEntityImpl _$$MachineryServiceDataEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MachineryServiceDataEntityImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String?,
      projectId: json['project_id'] as String?,
      projectDataId: json['project_data_id'] as String?,
      machineryId: json['machinery_id'] as String?,
      date: const GenericDateJsonParserToMilliSec().fromJson(json['date']),
      supervisorId: json['supervisor_id'] as String?,
      headDiggerId: json['head_digger_id'] as String?,
      serviceType: (json['service_type'] as num?)?.toInt(),
      machineryWorkingHour: json['machinery_working_hour'] as String?,
      description: json['description'] as String?,
      status: json['status'] as String?,
      createdAt:
          const GenericDateJsonParserToMilliSec().fromJson(json['created_at']),
      updatedAt:
          const GenericDateJsonParserToMilliSec().fromJson(json['updated_at']),
      user: json['user'] as String?,
      headDigger: json['headDigger'] as String?,
      machinery: json['machinery'] as String?,
      supervisor: json['supervisor'] as String?,
      type: json['type'] as String?,
      project: json['project'] as String?,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => DocumentEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MachineryServiceDataEntityImplToJson(
        _$MachineryServiceDataEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'project_id': instance.projectId,
      'project_data_id': instance.projectDataId,
      'machinery_id': instance.machineryId,
      'date': const GenericDateJsonParserToMilliSec().toJson(instance.date),
      'supervisor_id': instance.supervisorId,
      'head_digger_id': instance.headDiggerId,
      'service_type': instance.serviceType,
      'machinery_working_hour': instance.machineryWorkingHour,
      'description': instance.description,
      'status': instance.status,
      'created_at':
          const GenericDateJsonParserToMilliSec().toJson(instance.createdAt),
      'updated_at':
          const GenericDateJsonParserToMilliSec().toJson(instance.updatedAt),
      'user': instance.user,
      'headDigger': instance.headDigger,
      'machinery': instance.machinery,
      'supervisor': instance.supervisor,
      'type': instance.type,
      'project': instance.project,
      'images': instance.images.map((e) => e.toJson()).toList(),
    };
