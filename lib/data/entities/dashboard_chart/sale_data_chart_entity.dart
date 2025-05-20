import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mpm/common/parser/date_json_parser.dart';

part 'sale_data_chart_entity.freezed.dart';
part 'sale_data_chart_entity.g.dart';

@freezed
class SaleDataChartEntity with _$SaleDataChartEntity {
  const factory SaleDataChartEntity({
    @JsonKey(name: 'schedulePerformanceComparisonCharts') List<SchedulePerformanceComparisonCharts>? schedulePerformanceComparisonCharts,
  }) = _SaleDataChartEntity;

  factory SaleDataChartEntity.fromJson(Map<String, Object?> json) => _$SaleDataChartEntityFromJson(json);
}

@freezed
class SchedulePerformanceComparisonCharts with _$SchedulePerformanceComparisonCharts {
  const factory SchedulePerformanceComparisonCharts({
    @JsonKey(name: 'data') List<Data>? data,
    @JsonKey(name: 'start_date') @DateJsonParser() DateTime? startDate,
    @JsonKey(name: 'end_date') @DateJsonParser() DateTime? endDate,
    @JsonKey(name: 'product_name') String? productName,
    @JsonKey(name: 'product_symbol') String? productSymbol,
  }) = _SchedulePerformanceComparisonCharts;

  factory SchedulePerformanceComparisonCharts.fromJson(Map<String, Object?> json) => _$SchedulePerformanceComparisonChartsFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'performance') int? performance,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'display_type') dynamic displayType,
    @JsonKey(name: 'display_domestic_type') String? displayDomesticType,
    @JsonKey(name: 'month') int? month,
    @JsonKey(name: 'year') int? year,
  }) = _Data;

  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}

