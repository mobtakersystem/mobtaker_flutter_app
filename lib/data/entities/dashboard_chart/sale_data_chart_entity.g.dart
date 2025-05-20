// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_data_chart_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaleDataChartEntityImpl _$$SaleDataChartEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SaleDataChartEntityImpl(
      schedulePerformanceComparisonCharts:
          (json['schedulePerformanceComparisonCharts'] as List<dynamic>?)
              ?.map((e) => SchedulePerformanceComparisonCharts.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$SaleDataChartEntityImplToJson(
        _$SaleDataChartEntityImpl instance) =>
    <String, dynamic>{
      'schedulePerformanceComparisonCharts':
          instance.schedulePerformanceComparisonCharts,
    };

_$SchedulePerformanceComparisonChartsImpl
    _$$SchedulePerformanceComparisonChartsImplFromJson(
            Map<String, dynamic> json) =>
        _$SchedulePerformanceComparisonChartsImpl(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
              .toList(),
          startDate:
              const DateJsonParser().fromJson(json['start_date'] as String?),
          endDate: const DateJsonParser().fromJson(json['end_date'] as String?),
          productName: json['product_name'] as String?,
          productSymbol: json['product_symbol'] as String?,
        );

Map<String, dynamic> _$$SchedulePerformanceComparisonChartsImplToJson(
        _$SchedulePerformanceComparisonChartsImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'start_date': const DateJsonParser().toJson(instance.startDate),
      'end_date': const DateJsonParser().toJson(instance.endDate),
      'product_name': instance.productName,
      'product_symbol': instance.productSymbol,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      performance: (json['performance'] as num?)?.toInt(),
      date: json['date'] as String?,
      displayType: json['display_type'],
      displayDomesticType: json['display_domestic_type'] as String?,
      month: (json['month'] as num?)?.toInt(),
      year: (json['year'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'performance': instance.performance,
      'date': instance.date,
      'display_type': instance.displayType,
      'display_domestic_type': instance.displayDomesticType,
      'month': instance.month,
      'year': instance.year,
    };
