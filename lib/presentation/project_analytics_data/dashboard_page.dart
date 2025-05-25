import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/riverpod_helper_multi.dart';
import 'package:mpm/data/entities/dashboard_chart/enventory_chart_entity.dart'
    show InventoryChartEntity;
import 'package:mpm/data/entities/dashboard_chart/production_chart_entity.dart'
    show ProductionChartEntity;
import 'package:mpm/data/entities/dashboard_chart/sale_data_chart_entity.dart'
    show SaleDataChartEntity;
import 'package:mpm/presentation/project_analytics_data/inventory_charts/inventory_charts.dart';
import 'package:mpm/presentation/project_analytics_data/production_charts/production_chart.dart';
import 'package:mpm/presentation/project_analytics_data/provider/inventory_chart_provider.dart';
import 'package:mpm/presentation/project_analytics_data/provider/production_chart_provider.dart';
import 'package:mpm/presentation/project_analytics_data/provider/sale_chart_provider.dart';
import 'package:mpm/presentation/project_analytics_data/sale_charts/sale_charts.dart';

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
    return RiverPodConnectionHelperWidgetMulti(
      values: [productionChart, saleChart, inventoryChartsState],
      successBuilder: (data) {
        final production = data[0] as ProductionChartEntity;
        final sale = data[1] as SaleDataChartEntity;
        final inventory = data[2] as InventoryChartEntity;
        return CustomScrollView(
          slivers: [
            ProductionChartWidget(chartsData: production),
            SaleChartsWidget(chartsData: sale),
            InventoryChartsWidget(chartsData: inventory),
          ],
        );
      },
      tryAgain: () {},
    );
  }
}
