import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mpm/common/parser/date_json_parser.dart';
import 'package:mpm/data/entities/document/document_entity.dart';

part 'machinery_part_data_entity.freezed.dart';

part 'machinery_part_data_entity.g.dart';

@freezed
class MachineryPartDataEntity with _$MachineryPartDataEntity {
  @JsonSerializable(explicitToJson: true)
  const factory MachineryPartDataEntity({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'project_id') String? projectId,
    @JsonKey(name: 'project_data_id') String? projectDataId,
    @JsonKey(name: 'machinery_id') String? machineryId,
    @JsonKey(name: 'part_id') String? partId,
    @JsonKey(name: 'date') @GenericDateJsonParserToMilliSec() DateTime? date,
    @JsonKey(name: 'supervisor_id') String? supervisorId,
    @JsonKey(name: 'head_digger_id') String? headDiggerId,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'status') @Default("") String status,
    @JsonKey(name: 'created_at') @GenericDateJsonParserToMilliSec() DateTime? createdAt,
    @JsonKey(name: 'updated_at') @GenericDateJsonParserToMilliSec() DateTime? updatedAt,
    @JsonKey(name: 'headDigger') @Default("") String headDigger,
    @JsonKey(name: 'machinery') @Default("") String machinery,
    @JsonKey(name: 'supervisor') @Default("") String supervisor,
    @JsonKey(name: 'part') @Default("") String part,
    @JsonKey(name: 'project') @Default("") String project,
    @JsonKey(name: 'images') @Default([]) List<DocumentEntity> images,
  }) = _MachineryPartDataEntity;

  factory MachineryPartDataEntity.fromJson(Map<String, Object?> json) =>
      _$MachineryPartDataEntityFromJson(json);
}
