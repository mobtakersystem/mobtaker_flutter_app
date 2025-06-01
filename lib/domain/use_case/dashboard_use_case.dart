import 'package:mpm/data/entities/dashboard_chart/enventory_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/production_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/sale_data_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/stop_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/utility_chart_entity.dart';
import 'package:mpm/domain/failure_model.dart';
import 'package:mpm/domain/repository/dashboard/dashboard_repository.dart';

typedef ProductionDataDashboardChartUseCase
    = Future<ResultData<ProductionChartEntity>> Function(
        ProductionParams params);

typedef ProductStopsDashboardChartUseCase = Future<ResultData<StopChartEntity>>
    Function(StopParams params);

typedef SaleDataDashboardChartUseCase = Future<ResultData<SaleDataChartEntity>>
    Function(
  SalesParams params,
);

typedef InventoryDataDashboardChartUseCase
    = Future<ResultData<InventoryChartEntity>> Function(
  InventoryParams params,
);

typedef UtilityDataDashboardChartUseCase
    = Future<ResultData<UtilityChartEntity>> Function(UtilityParams params);
