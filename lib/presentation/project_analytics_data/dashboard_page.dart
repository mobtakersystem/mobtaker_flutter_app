import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/riverpod_helper.dart';
import 'package:mpm/presentation/project_analytics_data/production_charts/production_chart.dart';
import 'package:mpm/presentation/project_analytics_data/provider/production_chart_provider.dart';

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
    return RiverPodConnectionHelperWidget(
      value: productionChart,
      successBuilder: (production) => CustomScrollView(
        slivers: [
          SliverList.separated(
            itemBuilder: (context, index) => ProductionChartWidget(
              chartsData:
                  production.schedulePerformanceComparisonCharts![index],
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 16,
            ),
            itemCount:
                production.schedulePerformanceComparisonCharts?.length ?? 0,
          )
        ],
      ),
      tryAgain: () {},
    );
  }
}
