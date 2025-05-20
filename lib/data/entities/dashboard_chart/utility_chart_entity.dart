import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mpm/common/parser/date_json_parser.dart';

part 'utility_chart_entity.freezed.dart';
part 'utility_chart_entity.g.dart';

@freezed
class UtilityChartEntity with _$UtilityChartEntity {
  const factory UtilityChartEntity({
    @JsonKey(name: 'utility_chart') List<UtilityChart>? utilityChart,
    @JsonKey(name: 'utility_products') List<UtilityProducts>? utilityProducts,
  }) = _UtilityChartEntity;

  factory UtilityChartEntity.fromJson(Map<String, Object?> json) => _$UtilityChartEntityFromJson(json);
}

@freezed
class UtilityProducts with _$UtilityProducts {
  const factory UtilityProducts({
    @JsonKey(name: 'production_product_id') String? productionProductId,
    @JsonKey(name: 'utility_product_id') String? utilityProductId,
    @JsonKey(name: 'indicator_id') String? indicatorId,
    @JsonKey(name: 'display_name') String? displayName,
    @JsonKey(name: 'priority') int? priority,
    @JsonKey(name: 'product') Product? product,
    @JsonKey(name: 'indicator') Indicator? indicator,
  }) = _UtilityProducts;

  factory UtilityProducts.fromJson(Map<String, Object?> json) => _$UtilityProductsFromJson(json);
}

@freezed
class Indicator with _$Indicator {
  const factory Indicator({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'display_name') String? displayName,
    @JsonKey(name: 'symbol') dynamic symbol,
  }) = _Indicator;

  factory Indicator.fromJson(Map<String, Object?> json) => _$IndicatorFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'symbol') String? symbol,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'priority') int? priority,
    @JsonKey(name: 'display_status') String? displayStatus,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) => _$ProductFromJson(json);
}

@freezed
class UtilityChart with _$UtilityChart {
  const factory UtilityChart({
    @JsonKey(name: 'data') List<Data>? data,
    @JsonKey(name: 'start_date') @DateJsonParser() DateTime?  startDate,
    @JsonKey(name: 'end_date') @DateJsonParser() DateTime? endDate,
    @JsonKey(name: 'product_name') String? productName,
    @JsonKey(name: 'product_symbol') String? productSymbol,
  }) = _UtilityChart;

  factory UtilityChart.fromJson(Map<String, Object?> json) => _$UtilityChartFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'schedule') int? schedule,
    @JsonKey(name: 'performance') int? performance,
    @JsonKey(name: 'deviation') int? deviation,
  }) = _Data;

  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}

