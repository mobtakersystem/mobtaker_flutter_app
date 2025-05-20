import 'package:get_it/get_it.dart';
import 'package:mpm/data/entities/dashboard_chart/sale_data_chart_entity.dart';
import 'package:mpm/domain/failure_model.dart';
import 'package:mpm/domain/use_case/dashboard_use_case.dart'
    show SaleDataDashboardChartUseCase;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sale_chart_provider.g.dart';

@riverpod
class SaleChart extends _$SaleChart {
  @override
  FutureOr<ResultData<SaleDataChartEntity>> build() async {
    return GetIt.I<SaleDataDashboardChartUseCase>().call();
  }
}
