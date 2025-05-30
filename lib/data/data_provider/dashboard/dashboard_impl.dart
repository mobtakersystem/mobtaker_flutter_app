import 'package:mpm/data/entities/dashboard_chart/enventory_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/production_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/sale_data_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/stop_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/utility_chart_entity.dart';
import 'package:mpm/data/network/network_request.dart';
import 'package:mpm/data/network/network_service.dart';
import 'package:mpm/data/network/request_body.dart';

import 'dashboard_interface.dart';

class DashboardApiDataProvider extends DashboardDataProvider {
  final NetworkService _networkService;

  DashboardApiDataProvider({required NetworkService networkService})
      : _networkService = networkService;

  @override
  Future<InventoryChartEntity> inventoryData() {
    return _networkService.execute(
      const NetworkRequest(
          type: NetworkRequestType.post,
          path: "dashboard/inventory-data",
          data: NetworkRequestBody.empty()),
      parser: (jsonParam) => InventoryChartEntity.fromJson(jsonParam!),
    );
  }

  @override
  Future<ProductionChartEntity> productionData() {
    return _networkService.execute(
      const NetworkRequest(
          type: NetworkRequestType.post,
          path: "dashboard/production-data",
          data: NetworkRequestBody.empty()),
      parser: (jsonParam) => ProductionChartEntity.fromJson(jsonParam!),
    );
  }

  @override
  Future<StopChartEntity> productStops() {
    return _networkService.execute(
      const NetworkRequest(
          type: NetworkRequestType.post,
          path: "dashboard/production-stops",
          data: NetworkRequestBody.empty()),
      parser: (jsonParam) => StopChartEntity.fromJson(jsonParam!),
    );
  }

  @override
  Future<SaleDataChartEntity> saleData() {
    return _networkService.execute(
      const NetworkRequest(
          type: NetworkRequestType.post,
          path: "dashboard/sale-data",
          data: NetworkRequestBody.empty()),
      parser: (jsonParam) => SaleDataChartEntity.fromJson(jsonParam!),
    );
  }

  @override
  Future<UtilityChartEntity> utilityData(Map<String, dynamic> params) {
    return _networkService.execute(
      NetworkRequest(
          type: NetworkRequestType.post,
          path: "dashboard/utility-data",
          data: NetworkRequestBody.json(
            params,
          )),
      parser: (jsonParam) => UtilityChartEntity.fromJson(jsonParam!),
    );
  }
}
