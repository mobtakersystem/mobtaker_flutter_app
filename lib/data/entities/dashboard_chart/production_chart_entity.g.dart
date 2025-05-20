// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_chart_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductionChartEntityImpl _$$ProductionChartEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductionChartEntityImpl(
      schedulePerformanceComparisonCharts:
          (json['schedulePerformanceComparisonCharts'] as List<dynamic>?)
              ?.map((e) => SchedulePerformanceComparisonCharts.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$ProductionChartEntityImplToJson(
        _$ProductionChartEntityImpl instance) =>
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
          currentPerformance: (json['current_performance'] as List<dynamic>?)
              ?.map(
                  (e) => CurrentPerformance.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$SchedulePerformanceComparisonChartsImplToJson(
        _$SchedulePerformanceComparisonChartsImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'start_date': const DateJsonParser().toJson(instance.startDate),
      'end_date': const DateJsonParser().toJson(instance.endDate),
      'product_name': instance.productName,
      'current_performance': instance.currentPerformance,
    };

_$CurrentPerformanceImpl _$$CurrentPerformanceImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentPerformanceImpl(
      title: json['title'] as String?,
      performance: (json['performance'] as num?)?.toInt(),
      commited: (json['commited'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CurrentPerformanceImplToJson(
        _$CurrentPerformanceImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'performance': instance.performance,
      'commited': instance.commited,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      date: json['date'] as String?,
      schedule: (json['schedule'] as num?)?.toInt(),
      performance: (json['performance'] as num?)?.toInt(),
      deviation: (json['deviation'] as num?)?.toInt(),
      deviationStartLine: (json['deviationStartLine'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'schedule': instance.schedule,
      'performance': instance.performance,
      'deviation': instance.deviation,
      'deviationStartLine': instance.deviationStartLine,
    };
