import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mpm/common/parser/date_json_parser.dart';

part 'production_chart_entity.freezed.dart';
part 'production_chart_entity.g.dart';

@freezed
class ProductionChartEntity with _$ProductionChartEntity {
  const factory ProductionChartEntity({
    @JsonKey(name: 'schedulePerformanceComparisonCharts') List<SchedulePerformanceComparisonCharts>? schedulePerformanceComparisonCharts,
  }) = _ProductionChartEntity;

  factory ProductionChartEntity.fromJson(Map<String, Object?> json) => _$ProductionChartEntityFromJson(json);
}

@freezed
class SchedulePerformanceComparisonCharts with _$SchedulePerformanceComparisonCharts {
  const factory SchedulePerformanceComparisonCharts({
    @JsonKey(name: 'data') List<Data>? data,
    @JsonKey(name: 'start_date') @DateJsonParser() DateTime? startDate,
    @JsonKey(name: 'end_date') @DateJsonParser() DateTime? endDate,
    @JsonKey(name: 'product_name') String? productName,
    @JsonKey(name: 'current_performance') List<CurrentPerformance>? currentPerformance,
  }) = _SchedulePerformanceComparisonCharts;

  factory SchedulePerformanceComparisonCharts.fromJson(Map<String, Object?> json) => _$SchedulePerformanceComparisonChartsFromJson(json);
}

@freezed
class CurrentPerformance with _$CurrentPerformance {
  const factory CurrentPerformance({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'performance') int? performance,
    @JsonKey(name: 'commited') int? commited,
  }) = _CurrentPerformance;

  factory CurrentPerformance.fromJson(Map<String, Object?> json) => _$CurrentPerformanceFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'schedule') int? schedule,
    @JsonKey(name: 'performance') int? performance,
    @JsonKey(name: 'deviation') int? deviation,
    @JsonKey(name: 'deviationStartLine') int? deviationStartLine,
  }) = _Data;

  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}

