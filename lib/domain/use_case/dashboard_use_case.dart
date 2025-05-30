import 'package:mpm/data/entities/dashboard_chart/enventory_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/production_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/sale_data_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/stop_chart_entity.dart'
    show StopChartEntity;
import 'package:mpm/data/entities/dashboard_chart/utility_chart_entity.dart';
import 'package:mpm/domain/failure_model.dart';
import 'package:mpm/domain/repository/dashboard/dashboard_repository.dart'
    show UtilityParams;

typedef ProductionDataDashboardChartUseCase
    = Future<ResultData<ProductionChartEntity>> Function();

typedef ProductStopsDashboardChartUseCase = Future<ResultData<StopChartEntity>>
    Function();

typedef SaleDataDashboardChartUseCase = Future<ResultData<SaleDataChartEntity>>
    Function();

typedef InventoryDataDashboardChartUseCase
    = Future<ResultData<InventoryChartEntity>> Function();

typedef UtilityDataDashboardChartUseCase
    = Future<ResultData<UtilityChartEntity>> Function(UtilityParams params);
