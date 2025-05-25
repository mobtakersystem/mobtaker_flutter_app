// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stop_chart_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StopChartEntityImpl _$$StopChartEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$StopChartEntityImpl(
      stopCharts: (json['stop_charts'] as List<dynamic>?)
          ?.map((e) => StopCharts.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StopChartEntityImplToJson(
        _$StopChartEntityImpl instance) =>
    <String, dynamic>{
      'stop_charts': instance.stopCharts,
    };

_$StopChartsImpl _$$StopChartsImplFromJson(Map<String, dynamic> json) =>
    _$StopChartsImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      productName: json['product_name'] as String?,
      productSymbol: json['product_symbol'] as String?,
      details: (json['details'] as List<dynamic>?)
          ?.map((e) => Details.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StopChartsImplToJson(_$StopChartsImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'product_name': instance.productName,
      'product_symbol': instance.productSymbol,
      'details': instance.details,
    };

_$DetailsImpl _$$DetailsImplFromJson(Map<String, dynamic> json) =>
    _$DetailsImpl(
      id: json['id'] as String?,
      productId: json['product_id'] as String?,
      stopReasonId: (json['stop_reason_id'] as num?)?.toInt(),
      date: json['date'] as String?,
      start: json['start'] as String?,
      end: json['end'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      status: json['status'] as String?,
      description: json['description'],
      userId: json['user_id'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      type: json['type'] == null
          ? null
          : Type.fromJson(json['type'] as Map<String, dynamic>),
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$$DetailsImplToJson(_$DetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'stop_reason_id': instance.stopReasonId,
      'date': instance.date,
      'start': instance.start,
      'end': instance.end,
      'duration': instance.duration,
      'status': instance.status,
      'description': instance.description,
      'user_id': instance.userId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'type': instance.type,
      'reason': instance.reason,
    };

_$TypeImpl _$$TypeImplFromJson(Map<String, dynamic> json) => _$TypeImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$TypeImplToJson(_$TypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      reason: json['reason'] as String?,
      totalHour: (json['totalHour'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'totalHour': instance.totalHour,
    };
