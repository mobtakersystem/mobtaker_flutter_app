// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enventory_chart_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InventoryChartEntityImpl _$$InventoryChartEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$InventoryChartEntityImpl(
      inventoryChart: (json['inventoryChart'] as List<dynamic>?)
          ?.map((e) => InventoryChart.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$InventoryChartEntityImplToJson(
        _$InventoryChartEntityImpl instance) =>
    <String, dynamic>{
      'inventoryChart': instance.inventoryChart,
    };

_$InventoryChartImpl _$$InventoryChartImplFromJson(Map<String, dynamic> json) =>
    _$InventoryChartImpl(
      productName: json['product_name'] as String?,
      productSymbol: json['product_symbol'] as String?,
      currentInventory: (json['current_inventory'] as num?)?.toInt(),
      totalInventory: (json['total_inventory'] as num?)?.toInt(),
      buyCommitment: (json['buy_commitment'] as num?)?.toInt(),
      saleCommitment: (json['sale_commitment'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$InventoryChartImplToJson(
        _$InventoryChartImpl instance) =>
    <String, dynamic>{
      'product_name': instance.productName,
      'product_symbol': instance.productSymbol,
      'current_inventory': instance.currentInventory,
      'total_inventory': instance.totalInventory,
      'buy_commitment': instance.buyCommitment,
      'sale_commitment': instance.saleCommitment,
    };
