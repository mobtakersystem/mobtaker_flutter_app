import 'package:freezed_annotation/freezed_annotation.dart';

part 'stop_chart_entity.freezed.dart';
part 'stop_chart_entity.g.dart';

@freezed
abstract class StopChartEntity with _$StopChartEntity {
  const factory StopChartEntity({
    @JsonKey(name: 'stop_charts') List<StopCharts>? stopCharts,
  }) = _StopChartEntity;

  factory StopChartEntity.fromJson(Map<String, Object?> json) => _$StopChartEntityFromJson(json);
}

@freezed
abstract class StopCharts with _$StopCharts {
  const factory StopCharts({
    @JsonKey(name: 'data') List<Data>? data,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
    @JsonKey(name: 'product_name') String? productName,
    @JsonKey(name: 'product_symbol') String? productSymbol,
    @JsonKey(name: 'details') List<Details>? details,
  }) = _StopCharts;

  factory StopCharts.fromJson(Map<String, Object?> json) => _$StopChartsFromJson(json);
}

@freezed
abstract class Details with _$Details {
  const factory Details({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'product_id') String? productId,
    @JsonKey(name: 'stop_reason_id') int? stopReasonId,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'start') String? start,
    @JsonKey(name: 'end') String? end,
    @JsonKey(name: 'duration') int? duration,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'description') dynamic description,
    @JsonKey(name: 'user_id') dynamic userId,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'type') Type? type,
    @JsonKey(name: 'reason') String? reason,
  }) = _Details;

  factory Details.fromJson(Map<String, Object?> json) => _$DetailsFromJson(json);
}

@freezed
abstract class Type with _$Type {
  const factory Type({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
  }) = _Type;

  factory Type.fromJson(Map<String, Object?> json) => _$TypeFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'reason') String? reason,
    @JsonKey(name: 'totalHour') int? totalHour,
  }) = _Data;

  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}

