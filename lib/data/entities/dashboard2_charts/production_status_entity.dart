import 'package:freezed_annotation/freezed_annotation.dart';

part 'production_status_entity.freezed.dart';
part 'production_status_entity.g.dart';

@freezed
abstract class ProductionStatusEntity with _$ProductionStatusEntity {
  const factory ProductionStatusEntity({
    @JsonKey(name: 'performance_chart') PerformanceChart? performanceChart,
    @JsonKey(name: 'details') List<Details>? details,
  }) = _ProductionStatusEntity;

  factory ProductionStatusEntity.fromJson(Map<String, Object?> json) => _$ProductionStatusEntityFromJson(json);
}

@freezed
abstract class Details with _$Details {
  const factory Details({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'value') String? value,
  }) = _Details;

  factory Details.fromJson(Map<String, Object?> json) => _$DetailsFromJson(json);
}

@freezed
abstract class PerformanceChart with _$PerformanceChart {
  const factory PerformanceChart({
    @JsonKey(name: 'data') List<Data>? data,
    @JsonKey(name: 'period') String? period,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
  }) = _PerformanceChart;

  factory PerformanceChart.fromJson(Map<String, Object?> json) => _$PerformanceChartFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'performance_this_year') int? performanceThisYear,
    @JsonKey(name: 'performance_last_year') int? performanceLastYear,
    @JsonKey(name: 'schedule_this_year') int? scheduleThisYear,
    @JsonKey(name: 'schedule_last_year') int? scheduleLastYear,
    @JsonKey(name: 'schedule_start_line') int? scheduleStartLine,
  }) = _Data;

  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}

