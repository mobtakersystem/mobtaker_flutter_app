import 'package:mpm/data/entities/dashboard_chart/enventory_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/production_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/sale_data_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/stop_chart_entity.dart'
    show StopChartEntity;
import 'package:mpm/data/entities/dashboard_chart/utility_chart_entity.dart';

abstract class DashboardDataProvider {
  Future<ProductionChartEntity> productionData(Map<String, dynamic> params);

  Future<StopChartEntity> productStops(Map<String, dynamic> params);

  Future<SaleDataChartEntity> saleData(Map<String, dynamic> params);

  Future<InventoryChartEntity> inventoryData(Map<String, dynamic> params);

  Future<UtilityChartEntity> utilityData(Map<String, dynamic> params);
}
