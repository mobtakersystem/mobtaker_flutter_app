import 'package:flutter/material.dart';
import 'package:mpm/domain/repository/dashboard/dashboard_repository.dart';
import 'package:mpm/domain/repository/dashboard/dashboard_slug_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'production_filter_provider.g.dart';

@riverpod
class ProductionFilter extends _$ProductionFilter {
  @override
  ProductionParams build() {
    return const ProductionParams();
  }

  void setDateRange(DateTimeRange? dateRange) {
    state = state.copyWith(
      dateRange: dateRange,
    );
  }


  void clearAllFilter() {
    state = const ProductionParams();
  }

  void setShowDetails(bool showDetails) {
    state = state.copyWith(
      showDetails: showDetails,
      showChartCumulative: showDetails ? state.showChartCumulative : false,
    );
  }

  void setShowChartCumulative(bool showChartCumulative,
      {required ValueSetter<String> onValidateError}) {
    if (showChartCumulative && !state.showDetails) {
      onValidateError("برای گزارش تجمعی، باید نمایش جزئیات را فعال کنید");
      return;
    }
    state = state.copyWith(showChartCumulative: showChartCumulative);
  }

  void setChartPeriod(ChartPeriod chartPeriod) {
    state = state.copyWith(chartPeriod: chartPeriod);
  }
}
