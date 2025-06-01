import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:mpm/data/data_provider/dashboard/dashboard_interface.dart';
import 'package:mpm/data/entities/dashboard_chart/enventory_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/production_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/sale_data_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/stop_chart_entity.dart'
    show StopChartEntity;
import 'package:mpm/data/entities/dashboard_chart/utility_chart_entity.dart';
import 'package:mpm/domain/exception_handling.dart';
import 'package:mpm/domain/failure_model.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import 'dashboard_slug_data.dart';

part 'dashboard_repo_params.dart';

class DashboardRepository {
  final DashboardDataProvider _dashboardDataProvider;

  const DashboardRepository(
      {required DashboardDataProvider dashboardDataProvider})
      : _dashboardDataProvider = dashboardDataProvider;

  Future<ResultData<ProductionChartEntity>> productionData(
      ProductionParams params) {
    return _dashboardDataProvider.productionData(params.toJson()).mapToEither();
  }

  Future<ResultData<StopChartEntity>> productStops(StopParams params) {
    return _dashboardDataProvider.productStops(params.toJson()).mapToEither();
  }

  Future<ResultData<SaleDataChartEntity>> saleData(SalesParams params) {
    return _dashboardDataProvider.saleData(params.toJson()).mapToEither();
  }

  Future<ResultData<InventoryChartEntity>> inventoryData(
      InventoryParams params) {
    return _dashboardDataProvider.inventoryData(params.toJson()).mapToEither();
  }

  Future<ResultData<UtilityChartEntity>> utilityData(UtilityParams params) {
    return _dashboardDataProvider.utilityData(params.toJson()).mapToEither();
  }
}
