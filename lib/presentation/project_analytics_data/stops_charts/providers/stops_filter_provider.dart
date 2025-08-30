import 'package:flutter/material.dart' show DateTimeRange;
import 'package:mpm/domain/repository/dashboard/dashboard_repository.dart';
import 'package:mpm/domain/repository/dashboard/dashboard_slug_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'stops_filter_provider.g.dart';

@riverpod
class StopsFilter extends _$StopsFilter {
  @override
  StopParams build() {
    return const StopParams();
  }

  void setDateRange(DateTimeRange dateRange) {
    state = state.copyWith(
      dateRange: dateRange,
      showDetails: true,
    );
  }
  void clearDateRange() {
    state = StopParams(
      dateRange: null,
      showDetails: false,
      chartPeriod: state.chartPeriod,
    );
  }

  void clearAllFilter() {
    state = const StopParams();
  }

  void setShowDetails(bool showDetails) {
    state = state.copyWith(
      showDetails: showDetails,
    );
  }

  void setChartPeriod(ChartPeriod chartPeriod) {
    state = state.copyWith(
      chartPeriod: chartPeriod,
    );
  }
}
