import 'package:flutter/material.dart';
import 'package:mpm/domain/repository/dashboard/dashboard_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'inventory_filter_provider.g.dart';

@riverpod
class InventoryFilter extends _$InventoryFilter {
  @override
  InventoryParams build() {
    return const InventoryParams();
  }

  void setDateRange(DateTimeRange? dateRange) {
    state = state.copyWith(
      dateRange: dateRange,
    );
  }

  void clearDateRange() {
    state = state.copyWith(
      dateRange: null,
    );
  }

  void clearAllFilter() {
    state = const InventoryParams();
  }
}
