// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_data_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectDataEntityImpl _$$ProjectDataEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectDataEntityImpl(
      id: json['id'] as String,
      projectId: json['project_id'] as String,
      userId: json['user_id'] as String?,
      supervisorId: json['supervisor_id'] as String?,
      indicatorId: json['indicator_id'] as String?,
      date: const GenericDateJsonParserToMilliSec().fromJson(json['date']),
      headDiggerId: json['head_digger_id'] as String?,
      machineryId: json['machinery_id'] as String?,
      diggerId: json['digger_id'] as String?,
      shift: json['shift'] as String?,
      initialMeter: (json['initial_meter'] as num?)?.toDouble() ?? 0.0,
      finalMeter: (json['final_meter'] as num?)?.toDouble() ?? 0.0,
      machineryWorkingHour: json['machinery_working_hour'] as String? ?? "",
      machineryWorkingHourImage:
          json['machinery_working_hour_image'] as String?,
      stopImage: json['stop_image'] as String? ?? "",
      workers: (json['workers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      description: json['description'] as String? ?? "",
      status: json['status'] as String? ?? "",
      createdAt:
          const GenericDateJsonParserToMilliSec().fromJson(json['created_at']),
      updatedAt:
          const GenericDateJsonParserToMilliSec().fromJson(json['updated_at']),
      user: json['user'] as String? ?? "",
      headDigger: json['headDigger'] as String? ?? "",
      digger: json['digger'] as String? ?? "",
      machinery: json['machinery'] as String? ?? "",
      supervisor: json['supervisor'] as String? ?? "",
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => DocumentEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      stops: (json['stops'] as List<dynamic>?)
              ?.map((e) => StopDataEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      machineryServices: (json['machinery_services'] as List<dynamic>?)
              ?.map((e) => MachineryServiceDataEntity.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
      machineryPartConsumes: (json['machinery_part_consumes'] as List<dynamic>?)
              ?.map((e) =>
                  MachineryPartDataEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      syncStatus:
          $enumDecodeNullable(_$DataSyncStatusEnumMap, json['syncStatus']) ??
              DataSyncStatus.none,
      hasStop: json['hasStop'] as bool?,
      hasMachineryServices: json['hasMachineryServices'] as bool?,
      hasMachineryPartConsumes: json['hasMachineryPartConsumes'] as bool?,
      localMachineryWorkingHourImage: json['localMachineryWorkingHourImage'] ==
              null
          ? null
          : DocumentEntity.fromJson(
              json['localMachineryWorkingHourImage'] as Map<String, dynamic>),
      stopsImage: json['stopsImage'] == null
          ? null
          : DocumentEntity.fromJson(json['stopsImage'] as Map<String, dynamic>),
      lassSyncError: json['lassSyncError'] as String?,
    );

Map<String, dynamic> _$$ProjectDataEntityImplToJson(
        _$ProjectDataEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'project_id': instance.projectId,
      'user_id': instance.userId,
      'supervisor_id': instance.supervisorId,
      'indicator_id': instance.indicatorId,
      'date': const GenericDateJsonParserToMilliSec().toJson(instance.date),
      'head_digger_id': instance.headDiggerId,
      'machinery_id': instance.machineryId,
      'digger_id': instance.diggerId,
      'shift': instance.shift,
      'initial_meter': instance.initialMeter,
      'final_meter': instance.finalMeter,
      'machinery_working_hour': instance.machineryWorkingHour,
      'machinery_working_hour_image': instance.machineryWorkingHourImage,
      'stop_image': instance.stopImage,
      'workers': instance.workers,
      'description': instance.description,
      'status': instance.status,
      'created_at':
          const GenericDateJsonParserToMilliSec().toJson(instance.createdAt),
      'updated_at':
          const GenericDateJsonParserToMilliSec().toJson(instance.updatedAt),
      'user': instance.user,
      'headDigger': instance.headDigger,
      'digger': instance.digger,
      'machinery': instance.machinery,
      'supervisor': instance.supervisor,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'stops': instance.stops.map((e) => e.toJson()).toList(),
      'machinery_services':
          instance.machineryServices.map((e) => e.toJson()).toList(),
      'machinery_part_consumes':
          instance.machineryPartConsumes.map((e) => e.toJson()).toList(),
      'syncStatus': _$DataSyncStatusEnumMap[instance.syncStatus]!,
      'hasStop': instance.hasStop,
      'hasMachineryServices': instance.hasMachineryServices,
      'hasMachineryPartConsumes': instance.hasMachineryPartConsumes,
      'localMachineryWorkingHourImage':
          instance.localMachineryWorkingHourImage?.toJson(),
      'stopsImage': instance.stopsImage?.toJson(),
      'lassSyncError': instance.lassSyncError,
    };

const _$DataSyncStatusEnumMap = {
  DataSyncStatus.none: 'none',
  DataSyncStatus.pending: 'pending',
  DataSyncStatus.running: 'running',
  DataSyncStatus.failed: 'failed',
  DataSyncStatus.synced: 'synced',
};
