import 'package:freezed_annotation/freezed_annotation.dart';

part 'machinery_part_entity.freezed.dart';
part 'machinery_part_entity.g.dart';

@freezed
class MachineryPartEntity with _$MachineryPartEntity {
  const factory MachineryPartEntity({
    required String id,
    @JsonKey(name: 'name') @Default("") String name,
}) = _MachineryPartEntity;

  factory MachineryPartEntity.fromJson(Map<String, dynamic> json) =>
      _$MachineryPartEntityFromJson(json);
}