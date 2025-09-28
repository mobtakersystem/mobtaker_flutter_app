import 'package:mpm/data/entities/dashboard2_charts/production_status_entity.dart' show ProductionStatusEntity;
import 'package:mpm/data/entities/dashboard_chart/production_chart_entity.dart';

abstract class Dashboard2DataProvider {
  Future<ProductionStatusEntity> productionStatus(Map<String, dynamic> params);

  Future<ProductionChartEntity> productionComparison(
      Map<String, dynamic> params);

  Future<ProductionChartEntity> productionMdComparison(
      Map<String, dynamic> params);

  Future<ProductionChartEntity> productionStops(Map<String, dynamic> params);

  Future<ProductionChartEntity> saleComparison(Map<String, dynamic> params);

  Future<ProductionChartEntity> saleProductionRation(
      Map<String, dynamic> params);

  Future<ProductionChartEntity> saleExportDomestic(Map<String, dynamic> params);

  Future<ProductionChartEntity> inventory(Map<String, dynamic> params);
}
