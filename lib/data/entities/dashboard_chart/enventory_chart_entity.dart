import 'package:freezed_annotation/freezed_annotation.dart';

part 'enventory_chart_entity.freezed.dart';
part 'enventory_chart_entity.g.dart';

@freezed
class InventoryChartEntity with _$InventoryChartEntity {
  const factory InventoryChartEntity({
    @JsonKey(name: 'inventoryChart') List<InventoryChart>? inventoryChart,
  }) = _InventoryChartEntity;

  factory InventoryChartEntity.fromJson(Map<String, Object?> json) => _$InventoryChartEntityFromJson(json);
}

@freezed
class InventoryChart with _$InventoryChart {
  const factory InventoryChart({
    @JsonKey(name: 'product_name') String? productName,
    @JsonKey(name: 'product_symbol') String? productSymbol,
    @JsonKey(name: 'current_inventory') int? currentInventory,
    @JsonKey(name: 'total_inventory') int? totalInventory,
    @JsonKey(name: 'buy_commitment') int? buyCommitment,
    @JsonKey(name: 'sale_commitment') int? saleCommitment,
  }) = _InventoryChart;

  factory InventoryChart.fromJson(Map<String, Object?> json) => _$InventoryChartFromJson(json);
}

