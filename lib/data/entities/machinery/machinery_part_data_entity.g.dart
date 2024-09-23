// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'machinery_part_data_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MachineryPartDataEntityImpl _$$MachineryPartDataEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MachineryPartDataEntityImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String?,
      projectId: json['project_id'] as String?,
      projectDataId: json['project_data_id'] as String?,
      machineryId: json['machinery_id'] as String?,
      partId: json['part_id'] as String?,
      date: const GenericDateJsonParserToMilliSec().fromJson(json['date']),
      supervisorId: json['supervisor_id'] as String?,
      headDiggerId: json['head_digger_id'] as String?,
      description: json['description'] as String?,
      status: json['status'] as String? ?? "",
      createdAt:
          const GenericDateJsonParserToMilliSec().fromJson(json['created_at']),
      updatedAt:
          const GenericDateJsonParserToMilliSec().fromJson(json['updated_at']),
      headDigger: json['headDigger'] as String? ?? "",
      machinery: json['machinery'] as String? ?? "",
      supervisor: json['supervisor'] as String? ?? "",
      part: json['part'] as String? ?? "",
      project: json['project'] as String? ?? "",
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => DocumentEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MachineryPartDataEntityImplToJson(
        _$MachineryPartDataEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'project_id': instance.projectId,
      'project_data_id': instance.projectDataId,
      'machinery_id': instance.machineryId,
      'part_id': instance.partId,
      'date': const GenericDateJsonParserToMilliSec().toJson(instance.date),
      'supervisor_id': instance.supervisorId,
      'head_digger_id': instance.headDiggerId,
      'description': instance.description,
      'status': instance.status,
      'created_at':
          const GenericDateJsonParserToMilliSec().toJson(instance.createdAt),
      'updated_at':
          const GenericDateJsonParserToMilliSec().toJson(instance.updatedAt),
      'headDigger': instance.headDigger,
      'machinery': instance.machinery,
      'supervisor': instance.supervisor,
      'part': instance.part,
      'project': instance.project,
      'images': instance.images.map((e) => e.toJson()).toList(),
    };
