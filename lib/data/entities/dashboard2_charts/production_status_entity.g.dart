// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_status_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductionStatusEntityImpl _$$ProductionStatusEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductionStatusEntityImpl(
      performanceChart: json['performance_chart'] == null
          ? null
          : PerformanceChart.fromJson(
              json['performance_chart'] as Map<String, dynamic>),
      details: (json['details'] as List<dynamic>?)
          ?.map((e) => Details.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductionStatusEntityImplToJson(
        _$ProductionStatusEntityImpl instance) =>
    <String, dynamic>{
      'performance_chart': instance.performanceChart,
      'details': instance.details,
    };

_$DetailsImpl _$$DetailsImplFromJson(Map<String, dynamic> json) =>
    _$DetailsImpl(
      title: json['title'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$DetailsImplToJson(_$DetailsImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'value': instance.value,
    };

_$PerformanceChartImpl _$$PerformanceChartImplFromJson(
        Map<String, dynamic> json) =>
    _$PerformanceChartImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      period: json['period'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
    );

Map<String, dynamic> _$$PerformanceChartImplToJson(
        _$PerformanceChartImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'period': instance.period,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      title: json['title'] as String?,
      performanceThisYear: (json['performance_this_year'] as num?)?.toInt(),
      performanceLastYear: (json['performance_last_year'] as num?)?.toInt(),
      scheduleThisYear: (json['schedule_this_year'] as num?)?.toInt(),
      scheduleLastYear: (json['schedule_last_year'] as num?)?.toInt(),
      scheduleStartLine: (json['schedule_start_line'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'performance_this_year': instance.performanceThisYear,
      'performance_last_year': instance.performanceLastYear,
      'schedule_this_year': instance.scheduleThisYear,
      'schedule_last_year': instance.scheduleLastYear,
      'schedule_start_line': instance.scheduleStartLine,
    };
