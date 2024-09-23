// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worker_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkerEntityImpl _$$WorkerEntityImplFromJson(Map<String, dynamic> json) =>
    _$WorkerEntityImpl(
      id: json['id'] as String,
      firstName: json['first_name'] as String? ?? "",
      lastName: json['last_name'] as String? ?? "",
      fullName: json['full_name'] as String? ?? "",
    );

Map<String, dynamic> _$$WorkerEntityImplToJson(_$WorkerEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'full_name': instance.fullName,
    };
