import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mpm/common/parser/date_json_parser.dart';

part 'document_entity.freezed.dart';

part 'document_entity.g.dart';

@freezed
class DocumentEntity with _$DocumentEntity {
  const factory DocumentEntity({
    required String id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'documentable_type') String? documentableType,
    @JsonKey(name: 'documentable_id') String? documentableId,
    @JsonKey(name: 'mime_type') String? mimeType,
    @JsonKey(name: 'created_at') @DateJsonParser() DateTime? createdAt,
    @JsonKey(name: 'user') String? user,
    //local fields
    String? path,
    String? preSignedName,
  }) = _DocumentEntity;

  factory DocumentEntity.fromJson(Map<String, Object?> json) =>
      _$DocumentEntityFromJson(json);
}
