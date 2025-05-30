import 'package:mpm/data/entities/dashboard_chart/enventory_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/production_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/sale_data_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/stop_chart_entity.dart'
    show StopChartEntity;
import 'package:mpm/data/entities/dashboard_chart/utility_chart_entity.dart';

abstract class DashboardDataProvider {
  Future<ProductionChartEntity> productionData();

  Future<StopChartEntity> productStops();

  Future<SaleDataChartEntity> saleData();

  Future<InventoryChartEntity> inventoryData();

  Future<UtilityChartEntity> utilityData(Map<String, dynamic> params);
}
