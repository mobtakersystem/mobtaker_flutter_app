import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mpm/common/parser/date_json_parser.dart';

part 'stop_data.freezed.dart';

part 'stop_data.g.dart';

@freezed
class StopDataEntity with _$StopDataEntity {
  const factory StopDataEntity({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'project_id') String? projectId,
    @JsonKey(name: 'project_data_id') String? projectDataId,
    @JsonKey(name: 'reason') String? reason,
    @JsonKey(name: 'date') @GenericDateJsonParserToMilliSec() DateTime? date,
    @JsonKey(name: 'start') String? start,
    @JsonKey(name: 'end') String? end,
    @JsonKey(name: 'shift') String? shift,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'created_at') @GenericDateJsonParserToMilliSec() DateTime? createdAt,
    @JsonKey(name: 'updated_at') @GenericDateJsonParserToMilliSec() DateTime? updatedAt,
    @JsonKey(name: 'machinery') String? machinery,
    @JsonKey(name: 'display_reason') String? displayReason,
  }) = _StopDataEntity;

  factory StopDataEntity.fromJson(Map<String, Object?> json) =>
      _$StopDataEntityFromJson(json);
}
