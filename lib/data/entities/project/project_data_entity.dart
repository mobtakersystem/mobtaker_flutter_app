import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mpm/common/parser/date_json_parser.dart';
import 'package:mpm/data/entities/document/document_entity.dart';
import 'package:mpm/data/entities/machinery/machinery_data_entity.dart';
import 'package:mpm/data/entities/machinery/machinery_part_data_entity.dart';
import 'package:mpm/data/entities/stop_data/stop_data.dart';

part 'project_data_entity.freezed.dart';

part 'project_data_entity.g.dart';

@freezed
class ProjectDataEntity with _$ProjectDataEntity {
  @JsonSerializable(explicitToJson: true)
  const factory ProjectDataEntity({
    required String id,
    @JsonKey(name: 'project_id') required String projectId,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'supervisor_id') String? supervisorId,
    @JsonKey(name: 'indicator_id') String? indicatorId,
    @GenericDateJsonParserToMilliSec() DateTime? date,
    @JsonKey(name: 'head_digger_id') String? headDiggerId,
    @JsonKey(name: 'machinery_id') String? machineryId,
    @JsonKey(name: 'digger_id') String? diggerId,
    @JsonKey(name: 'shift') String? shift,
    @JsonKey(name: 'initial_meter') @Default(0.0) double initialMeter,
    @JsonKey(name: 'final_meter') @Default(0.0) double finalMeter,
    @JsonKey(name: 'machinery_working_hour')
    @Default("")
    String machineryWorkingHour,
    @JsonKey(name: 'machinery_working_hour_image')
    DocumentEntity? machineryWorkingHourImage,
    DocumentEntity? stopsImage,
    @JsonKey(name: 'stop_image') @Default("") String stopImage,
    @Default([]) List<String> workers,
    @Default("") String description,
    @Default("") String status,
    @JsonKey(name: 'created_at')
    @GenericDateJsonParserToMilliSec()
    DateTime? createdAt,
    @JsonKey(name: 'updated_at')
    @GenericDateJsonParserToMilliSec()
    DateTime? updatedAt,
    @Default("") String user,
    @Default("") String headDigger,
    @Default("") String digger,
    @Default("") String machinery,
    @Default("") String supervisor,
    @Default([]) List<DocumentEntity> images,
    @Default([]) List<StopDataEntity> stops,
    @JsonKey(name: 'machinery_services')
    @Default([])
    List<MachineryServiceDataEntity> machineryServices,
    @JsonKey(name: 'machinery_part_consumes')
    @Default([])
    List<MachineryPartDataEntity> machineryPartConsumes,
    //local fields
    @Default(DataSyncStatus.none) DataSyncStatus syncStatus,
    bool? hasStop,
    bool? hasMachineryServices,
    bool? hasMachineryPartConsumes,
  }) = _ProjectDataEntity;

  factory ProjectDataEntity.fromJson(Map<String, dynamic> json) =>
      _$ProjectDataEntityFromJson(json);
}

enum ShiftStatus {
  morning,
  night,
}

extension ShiftExt on ShiftStatus {
  String getName() {
    switch (name) {
      case 'morning':
        return 'صبح';
      case 'night':
        return 'شب';
      default:
        return '';
    }
  }
}

enum DataSyncStatus {
  none,
  pending,
  running,
  failed,
  synced,
}

extension PrDataExt on ProjectDataEntity {
  bool isLocalRecord() {
    return id.startsWith("LOCAL_");
  }

  String getSyncStatusText() {
    switch (syncStatus) {
      case DataSyncStatus.none:
        return '';
      case DataSyncStatus.pending:
        return 'در صف بارگزاری';
      case DataSyncStatus.running:
        return 'در حال بارگزاری';
      case DataSyncStatus.failed:
        return 'خطا در بارگزاری';
      case DataSyncStatus.synced:
        return 'بارگزاری شده';
    }
  }
}
