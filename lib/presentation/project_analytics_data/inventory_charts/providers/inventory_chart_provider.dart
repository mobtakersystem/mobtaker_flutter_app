import 'package:get_it/get_it.dart';
import 'package:mpm/data/entities/dashboard_chart/enventory_chart_entity.dart'
    show InventoryChartEntity;
import 'package:mpm/domain/failure_model.dart';
import 'package:mpm/domain/use_case/dashboard_use_case.dart'
    show InventoryDataDashboardChartUseCase, SaleDataDashboardChartUseCase;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'inventory_filter_provider.dart';

part 'inventory_chart_provider.g.dart';

@riverpod
class InventoryChart extends _$InventoryChart {
  @override
  FutureOr<ResultData<InventoryChartEntity>> build() async {
    final filterParams = ref.watch(inventoryFilterProvider);
    return GetIt.I<InventoryDataDashboardChartUseCase>().call(filterParams);
  }
}
