// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utility_chart_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UtilityChartEntityImpl _$$UtilityChartEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$UtilityChartEntityImpl(
      utilityChart: (json['utility_chart'] as List<dynamic>?)
          ?.map((e) => UtilityChart.fromJson(e as Map<String, dynamic>))
          .toList(),
      utilityProducts: (json['utility_products'] as List<dynamic>?)
          ?.map((e) => UtilityProducts.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UtilityChartEntityImplToJson(
        _$UtilityChartEntityImpl instance) =>
    <String, dynamic>{
      'utility_chart': instance.utilityChart,
      'utility_products': instance.utilityProducts,
    };

_$UtilityProductsImpl _$$UtilityProductsImplFromJson(
        Map<String, dynamic> json) =>
    _$UtilityProductsImpl(
      productionProductId: json['production_product_id'] as String?,
      utilityProductId: json['utility_product_id'] as String?,
      indicatorId: json['indicator_id'] as String?,
      displayName: json['display_name'] as String?,
      priority: (json['priority'] as num?)?.toInt(),
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      indicator: json['indicator'] == null
          ? null
          : Indicator.fromJson(json['indicator'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UtilityProductsImplToJson(
        _$UtilityProductsImpl instance) =>
    <String, dynamic>{
      'production_product_id': instance.productionProductId,
      'utility_product_id': instance.utilityProductId,
      'indicator_id': instance.indicatorId,
      'display_name': instance.displayName,
      'priority': instance.priority,
      'product': instance.product,
      'indicator': instance.indicator,
    };

_$IndicatorImpl _$$IndicatorImplFromJson(Map<String, dynamic> json) =>
    _$IndicatorImpl(
      id: json['id'] as String?,
      displayName: json['display_name'] as String?,
      symbol: json['symbol'],
    );

Map<String, dynamic> _$$IndicatorImplToJson(_$IndicatorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'display_name': instance.displayName,
      'symbol': instance.symbol,
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
      status: json['status'] as String?,
      priority: (json['priority'] as num?)?.toInt(),
      displayStatus: json['display_status'] as String?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
      'status': instance.status,
      'priority': instance.priority,
      'display_status': instance.displayStatus,
    };

_$UtilityChartImpl _$$UtilityChartImplFromJson(Map<String, dynamic> json) =>
    _$UtilityChartImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      startDate: const DateJsonParser().fromJson(json['start_date'] as String?),
      endDate: const DateJsonParser().fromJson(json['end_date'] as String?),
      productName: json['product_name'] as String?,
      productSymbol: json['product_symbol'] as String?,
    );

Map<String, dynamic> _$$UtilityChartImplToJson(_$UtilityChartImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'start_date': const DateJsonParser().toJson(instance.startDate),
      'end_date': const DateJsonParser().toJson(instance.endDate),
      'product_name': instance.productName,
      'product_symbol': instance.productSymbol,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      date: json['date'] as String?,
      schedule: (json['schedule'] as num?)?.toInt(),
      performance: (json['performance'] as num?)?.toInt(),
      deviation: (json['deviation'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'schedule': instance.schedule,
      'performance': instance.performance,
      'deviation': instance.deviation,
    };
