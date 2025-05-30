import 'package:flutter/material.dart';
import 'package:mpm/domain/repository/dashboard/dashboard_repository.dart';
import 'package:mpm/domain/repository/dashboard/dashboard_slug_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'utility_filter_provider.g.dart';

//filter for utility charts ,
// it contains date range, show details, show chart cumulative and chart period
// product is selected in the utility chart provider and don't change here
@riverpod
class UtilityFilter extends _$UtilityFilter {
  @override
  UtilityParams build() {
    return const UtilityParams();
  }

  void setDateRange(DateTimeRange? dateRange) {
    if (dateRange == null) {
      state = const UtilityParams();
    } else {
      state = state.copyWith(
        dateRange: dateRange,
      );
    }
  }

  void clearDateRange() {
    state = state.copyWith(
      dateRange: null,
    );
  }

  void clearAllFilter() {
    state = const UtilityParams();
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
