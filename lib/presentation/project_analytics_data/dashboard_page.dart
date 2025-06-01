import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/riverpod_helper_multi.dart';
import 'package:mpm/data/entities/dashboard_chart/utility_chart_entity.dart';
import 'package:mpm/presentation/project_analytics_data/inventory_charts/inventory_charts.dart';
import 'package:mpm/presentation/project_analytics_data/production_charts/production_chart.dart';
import 'package:mpm/presentation/project_analytics_data/inventory_charts/providers/inventory_chart_provider.dart';
import 'package:mpm/presentation/project_analytics_data/production_charts/providers/production_chart_provider.dart';
import 'package:mpm/presentation/project_analytics_data/sale_charts/providers/sale_chart_provider.dart';
import 'package:mpm/presentation/project_analytics_data/stops_charts/providers/stops_chart_provider.dart';
import 'package:mpm/presentation/project_analytics_data/sale_charts/sale_charts.dart';
import 'package:mpm/presentation/project_analytics_data/stops_charts/stops_charts.dart';
import 'package:mpm/presentation/project_analytics_data/utility_charts/providers/utility_chart_provider.dart';
import 'package:mpm/presentation/project_analytics_data/utility_charts/utility_charts.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("dashboard"),
        actions: const [],
      ),
      body: const ProductionSection(),
    );
  }
}

class ProductionSection extends ConsumerWidget {
  const ProductionSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productionChart = ref.watch(productionChartProvider);
    final saleChart = ref.watch(saleChartProvider);
    final inventoryChartsState = ref.watch(inventoryChartProvider);
    final stopChartsState = ref.watch(stopsChartProvider);
    final utilityChart = ref.watch(utilityProductsProvider);
    return RiverPodConnectionHelperWidgetMulti(
      values: [
        productionChart,
        saleChart,
        inventoryChartsState,
        stopChartsState,
        utilityChart
      ],
      successBuilder: (data) {
        final utility = data[4] as UtilityChartEntity;
        return CustomScrollView(
          slivers: [
            const ProductionChartWidget(),
            const SaleChartsWidget(),
            const InventoryChartsWidget(),
            const StopChartsWidget(),
            UtilityChartsWidget(chartsData: utility)
          ],
        );
      },
      tryAgain: () {},
    );
  }
}
