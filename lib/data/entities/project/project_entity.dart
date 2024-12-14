import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mpm/common/parser/date_json_parser.dart';

part 'project_entity.g.dart';

part 'project_entity.freezed.dart';

@freezed
class ProjectEntity with _$ProjectEntity {
  @JsonSerializable(explicitToJson: true)
  const factory ProjectEntity({
    required String id,
     String? type,
    @JsonKey(name: 'parent_id') String? parentId,
    @Default("") String title,
    @JsonKey(name: '_lft') int? lft,
    @JsonKey(name: '_rgt') int? rgt,
    int? depth,
    @JsonKey(name: 'start_date')
    @GenericDateJsonParserToMilliSec()
    DateTime? startDate,
    @JsonKey(name: 'end_date')
    @GenericDateJsonParserToMilliSec()
    DateTime? endDate,
    @Default("") String code,
    @JsonKey(name: 'percent_of_whole') @Default(0) int percentOfWhole,
    String? budget,
    int? quantity,
    String? description,
    required String status,
    String? step,
    @JsonKey(name: 'created_at')
    @GenericDateJsonParserToMilliSec()
    DateTime? createdAt,
    @JsonKey(name: 'updated_at')
    @GenericDateJsonParserToMilliSec()
    DateTime? updatedAt,
    int? performance,
    int? performanceOfWhole,
    required List<ProjectEntity> children,
    Map<String, dynamic>? pivot,
  }) = _ProjectEntity;

  factory ProjectEntity.fromJson(Map<String, dynamic> json) =>
      _$ProjectEntityFromJson(json);
}

extension ProjectEntityX on ProjectEntity {
  String typeTitle() {
    return 'حفاری';
    switch (type) {
      case 'drilling':
        return 'حفاری';
      default:
        return '-';
    }
  }
}
