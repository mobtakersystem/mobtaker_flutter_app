import 'package:mpm/data/entities/dashboard_chart/enventory_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/production_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/sale_data_chart_entity.dart';
import 'package:mpm/data/entities/dashboard_chart/utility_chart_entity.dart';
import 'package:mpm/domain/failure_model.dart';

typedef ProductionDataDashboardChartUseCase = Future<ResultData<ProductionChartEntity>>
    Function();

typedef ProductStopsDashboardChartUseCase = Future<ResultData<void>> Function();

typedef SaleDataDashboardChartUseCase = Future<ResultData<SaleDataChartEntity>>
    Function();

typedef InventoryDataDashboardChartUseCase = Future<ResultData<InventoryChartEntity>>
    Function();

typedef UtilityDataDashboardChartUseCase = Future<ResultData<UtilityChartEntity>>
    Function();
