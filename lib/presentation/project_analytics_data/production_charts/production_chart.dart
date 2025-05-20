import 'package:flutter/material.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/data/entities/dashboard_chart/production_chart_entity.dart';
import 'package:mpm/presentation/project_analytics_data/production_charts/production_chart_widget.dart';
import 'package:mpm/presentation/project_analytics_data/production_charts/production_table_widget.dart';

class ProductionChartWidget extends StatelessWidget {
  final SchedulePerformanceComparisonCharts chartsData;

  const ProductionChartWidget({super.key, required this.chartsData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(chartsData.productName ?? "",
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            )),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 90,
          child: ProductionTableWidget(
            currentPerformanceList: chartsData.currentPerformance ?? [],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Center(
          child: Text(
            "مقایسه عملکرد - برنامه ",
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        ProductionBarChart(
          data: chartsData.data ?? [],
        )
      ],
    );
  }
}
