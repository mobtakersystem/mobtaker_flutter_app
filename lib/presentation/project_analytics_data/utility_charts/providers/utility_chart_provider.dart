import 'package:get_it/get_it.dart';
import 'package:mpm/data/entities/dashboard_chart/utility_chart_entity.dart'
    show UtilityChartEntity;
import 'package:mpm/domain/failure_model.dart';
import 'package:mpm/domain/repository/dashboard/dashboard_repository.dart'
    show UtilityParams;
import 'package:mpm/domain/use_case/dashboard_use_case.dart'
    show UtilityDataDashboardChartUseCase;
import 'package:mpm/presentation/project_analytics_data/utility_charts/providers/utility_filter_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'utility_chart_provider.g.dart';

@riverpod
class UtilityChart extends _$UtilityChart {
  @override
  FutureOr<ResultData<UtilityChartEntity>> build(String? productId) async {
    final filterParams = ref.watch(utilityFilterProvider);
    return GetIt.I<UtilityDataDashboardChartUseCase>()
        .call(filterParams.copyWith(utilityProductId: productId));
  }
}

@riverpod
class UtilityProducts extends _$UtilityProducts {
  @override
  FutureOr<ResultData<UtilityChartEntity>> build() async {
    return GetIt.I<UtilityDataDashboardChartUseCase>()
        .call(const UtilityParams());
  }
}
