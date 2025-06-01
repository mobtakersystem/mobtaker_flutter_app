import 'package:get_it/get_it.dart';
import 'package:mpm/data/entities/dashboard_chart/production_chart_entity.dart';
import 'package:mpm/domain/failure_model.dart';
import 'package:mpm/domain/use_case/dashboard_use_case.dart'
    show ProductionDataDashboardChartUseCase;
import 'package:mpm/presentation/project_analytics_data/production_charts/providers/production_filter_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'production_chart_provider.g.dart';

@riverpod
class ProductionChart extends _$ProductionChart {
  @override
  FutureOr<ResultData<ProductionChartEntity>> build() async {
    final filterParams = ref.watch(productionFilterProvider);
    return GetIt.I<ProductionDataDashboardChartUseCase>().call(filterParams);
  }
}
