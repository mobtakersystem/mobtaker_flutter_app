// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectEntityImpl _$$ProjectEntityImplFromJson(Map<String, dynamic> json) =>
    _$ProjectEntityImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      parentId: json['parent_id'] as String?,
      title: json['title'] as String? ?? "",
      lft: (json['_lft'] as num?)?.toInt(),
      rgt: (json['_rgt'] as num?)?.toInt(),
      depth: (json['depth'] as num?)?.toInt(),
      startDate:
          const GenericDateJsonParserToMilliSec().fromJson(json['start_date']),
      endDate:
          const GenericDateJsonParserToMilliSec().fromJson(json['end_date']),
      code: json['code'] as String? ?? "",
      percentOfWhole: (json['percent_of_whole'] as num?)?.toInt() ?? 0,
      budget: json['budget'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      description: json['description'] as String?,
      status: json['status'] as String,
      step: json['step'] as String?,
      createdAt:
          const GenericDateJsonParserToMilliSec().fromJson(json['created_at']),
      updatedAt:
          const GenericDateJsonParserToMilliSec().fromJson(json['updated_at']),
      performance: (json['performance'] as num?)?.toInt(),
      performanceOfWhole: (json['performanceOfWhole'] as num?)?.toInt(),
      children: (json['children'] as List<dynamic>)
          .map((e) => ProjectEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      pivot: json['pivot'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ProjectEntityImplToJson(_$ProjectEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'parent_id': instance.parentId,
      'title': instance.title,
      '_lft': instance.lft,
      '_rgt': instance.rgt,
      'depth': instance.depth,
      'start_date':
          const GenericDateJsonParserToMilliSec().toJson(instance.startDate),
      'end_date':
          const GenericDateJsonParserToMilliSec().toJson(instance.endDate),
      'code': instance.code,
      'percent_of_whole': instance.percentOfWhole,
      'budget': instance.budget,
      'quantity': instance.quantity,
      'description': instance.description,
      'status': instance.status,
      'step': instance.step,
      'created_at':
          const GenericDateJsonParserToMilliSec().toJson(instance.createdAt),
      'updated_at':
          const GenericDateJsonParserToMilliSec().toJson(instance.updatedAt),
      'performance': instance.performance,
      'performanceOfWhole': instance.performanceOfWhole,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'pivot': instance.pivot,
    };
