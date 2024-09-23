// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_property_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectPropertyEntityImpl _$$ProjectPropertyEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectPropertyEntityImpl(
      workers: (json['workers'] as List<dynamic>?)
              ?.map((e) => WorkerEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      machineries: (json['machineries'] as List<dynamic>?)
              ?.map((e) => MachineryEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      machineryServiceTypes:
          (json['machineryServiceTypes'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, e as String),
              ) ??
              const {},
      machineryParts: (json['machineryParts'] as List<dynamic>?)
              ?.map((e) =>
                  MachineryPartEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      diggers: (json['diggers'] as List<dynamic>?)
              ?.map((e) => WorkerEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      headDiggers: (json['headDiggers'] as List<dynamic>?)
              ?.map((e) => WorkerEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      supervisors: (json['supervisors'] as List<dynamic>?)
              ?.map((e) => SupervisorEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      indicators: (json['indicators'] as List<dynamic>?)
              ?.map((e) => IndicatorEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      stopReasons: (json['stopReasons'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$$ProjectPropertyEntityImplToJson(
        _$ProjectPropertyEntityImpl instance) =>
    <String, dynamic>{
      'workers': instance.workers.map((e) => e.toJson()).toList(),
      'machineries': instance.machineries.map((e) => e.toJson()).toList(),
      'machineryServiceTypes': instance.machineryServiceTypes,
      'machineryParts': instance.machineryParts.map((e) => e.toJson()).toList(),
      'diggers': instance.diggers.map((e) => e.toJson()).toList(),
      'headDiggers': instance.headDiggers.map((e) => e.toJson()).toList(),
      'supervisors': instance.supervisors.map((e) => e.toJson()).toList(),
      'indicators': instance.indicators.map((e) => e.toJson()).toList(),
      'stopReasons': instance.stopReasons,
    };
