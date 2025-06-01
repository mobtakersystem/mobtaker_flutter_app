import 'package:get_it/get_it.dart';
import 'package:mpm/data/entities/dashboard_chart/stop_chart_entity.dart'
    show StopChartEntity;
import 'package:mpm/domain/failure_model.dart';
import 'package:mpm/domain/use_case/dashboard_use_case.dart'
    show ProductStopsDashboardChartUseCase;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'stops_filter_provider.dart';

part 'stops_chart_provider.g.dart';

@riverpod
class StopsChart extends _$StopsChart {
  @override
  FutureOr<ResultData<StopChartEntity>> build() async {
    final filterParams = ref.watch(stopsFilterProvider);
    return GetIt.I<ProductStopsDashboardChartUseCase>().call(filterParams);
  }
}
