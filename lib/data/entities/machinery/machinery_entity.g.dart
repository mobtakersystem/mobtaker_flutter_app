// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'machinery_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MachineryEntityImpl _$$MachineryEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MachineryEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String? ?? "",
      code: json['code'] as String? ?? "",
      brand: json['brand'] as String? ?? "",
      status: json['status'] as String? ?? "",
      createdAt:
          const GenericDateJsonParserToMilliSec().fromJson(json['created_at']),
      updatedAt:
          const GenericDateJsonParserToMilliSec().fromJson(json['updated_at']),
      projectMachineries: json['project_machineries'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$MachineryEntityImplToJson(
        _$MachineryEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'brand': instance.brand,
      'status': instance.status,
      'created_at':
          const GenericDateJsonParserToMilliSec().toJson(instance.createdAt),
      'updated_at':
          const GenericDateJsonParserToMilliSec().toJson(instance.updatedAt),
      'project_machineries': instance.projectMachineries,
    };
