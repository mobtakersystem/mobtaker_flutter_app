import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mpm/common/parser/date_json_parser.dart';

part 'machinery_entity.freezed.dart';

part 'machinery_entity.g.dart';

@freezed
class MachineryEntity with _$MachineryEntity {
  const factory MachineryEntity({
    required String id,
    @JsonKey(name: 'name') @Default("") String name,
    @JsonKey(name: 'code') @Default("") String code,
    @JsonKey(name: 'brand') @Default("") String brand,
    @JsonKey(name: 'status') @Default("") String status,
    @JsonKey(name: 'created_at') @GenericDateJsonParserToMilliSec() DateTime? createdAt,
    @JsonKey(name: 'updated_at') @GenericDateJsonParserToMilliSec() DateTime? updatedAt,
    @JsonKey(name: 'project_machineries')
    Map<String, dynamic>? projectMachineries,
  }) = _MachineryEntity;

  factory MachineryEntity.fromJson(Map<String, dynamic> json) =>
      _$MachineryEntityFromJson(json);
}
