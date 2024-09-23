import 'package:freezed_annotation/freezed_annotation.dart';

part 'indicator.freezed.dart';

part 'indicator.g.dart';

@freezed
class IndicatorEntity with _$IndicatorEntity {
  const factory IndicatorEntity({
    required String id,
    @Default("") String symbol,
    @JsonKey(name: 'display_name') @Default("") String displayName,
  }) = _IndicatorEntity;

  factory IndicatorEntity.fromJson(Map<String, dynamic> json) =>
      _$IndicatorEntityFromJson(json);
}
