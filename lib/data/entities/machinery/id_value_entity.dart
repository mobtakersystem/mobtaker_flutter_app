import 'package:freezed_annotation/freezed_annotation.dart';

part 'id_value_entity.freezed.dart';

part 'id_value_entity.g.dart';

@freezed
class IdValueEntity with _$IdValueEntity {
  const factory IdValueEntity({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') @Default("") String title,
  }) = _IdValueEntity;

  factory IdValueEntity.fromJson(Map<String, Object?> json) =>
      _$IdValueEntityFromJson(json);
}
