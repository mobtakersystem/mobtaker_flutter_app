import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mpm/common/parser/date_json_parser.dart';
import 'package:mpm/data/entities/document/document_entity.dart';

part 'machinery_data_entity.freezed.dart';

part 'machinery_data_entity.g.dart';

@freezed
class MachineryServiceDataEntity with _$MachineryServiceDataEntity {
  @JsonSerializable(explicitToJson: true)
  const factory MachineryServiceDataEntity({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'project_id') String? projectId,
    @JsonKey(name: 'project_data_id') String? projectDataId,
    @JsonKey(name: 'machinery_id') String? machineryId,
    @JsonKey(name: 'date') @GenericDateJsonParserToMilliSec() DateTime? date,
    @JsonKey(name: 'supervisor_id') String? supervisorId,
    @JsonKey(name: 'head_digger_id') String? headDiggerId,
    @JsonKey(name: 'service_type') int? serviceType,
    @JsonKey(name: 'machinery_working_hour') String? machineryWorkingHour,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'created_at') @GenericDateJsonParserToMilliSec() DateTime? createdAt,
    @JsonKey(name: 'updated_at') @GenericDateJsonParserToMilliSec() DateTime? updatedAt,
    @JsonKey(name: 'user') String? user,
    @JsonKey(name: 'headDigger') String? headDigger,
    @JsonKey(name: 'machinery') String? machinery,
    @JsonKey(name: 'supervisor') String? supervisor,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'project') String? project,
    @JsonKey(name: 'images') @Default([]) List<DocumentEntity> images,
  }) = _MachineryServiceDataEntity;

  factory MachineryServiceDataEntity.fromJson(Map<String, dynamic> json) =>
      _$MachineryServiceDataEntityFromJson(json);
}
