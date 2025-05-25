import 'package:mpm/data/data_provider/dashboard/dashboard_interface.dart';
import 'package:mpm/data/entities/dashboard_chart/enventory_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/production_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/sale_data_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/stop_chart_entity.dart' show StopChartEntity;
import 'package:mpm/data/entities/dashboard_chart/utility_chart_entity.dart';
import 'package:mpm/domain/exception_handling.dart';
import 'package:mpm/domain/failure_model.dart';

class DashboardRepository {
  final DashboardDataProvider _dashboardDataProvider;

  const DashboardRepository(
      {required DashboardDataProvider dashboardDataProvider})
      : _dashboardDataProvider = dashboardDataProvider;

  Future<ResultData<ProductionChartEntity>> productionData() {
    return _dashboardDataProvider.productionData().mapToEither();
  }

  Future<ResultData<StopChartEntity>> productStops() {
    return _dashboardDataProvider.productStops().mapToEither();
  }

  Future<ResultData<SaleDataChartEntity>> saleData() {
    return _dashboardDataProvider.saleData().mapToEither();
  }

  Future<ResultData<InventoryChartEntity>> inventoryData() {
    return _dashboardDataProvider.inventoryData().mapToEither();
  }

  Future<ResultData<UtilityChartEntity>> utilityData() {
    return _dashboardDataProvider.utilityData().mapToEither();
  }
}
