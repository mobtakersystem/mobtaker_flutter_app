import 'package:flutter/material.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/data/entities/dashboard_chart/sale_data_chart_entity.dart';
import 'package:mpm/presentation/project_analytics_data/pin_title_widget.dart';
import 'package:mpm/presentation/project_analytics_data/sale_charts/sale_bar_chart_widget.dart';
import 'package:sliver_tools/sliver_tools.dart';

class SaleChartsWidget extends StatelessWidget {
  final SaleDataChartEntity chartsData;

  const SaleChartsWidget({super.key, required this.chartsData});

  @override
  Widget build(BuildContext context) {
    return MultiSliver(pushPinnedChildren: true, children: [
      SliverPinnedHeader(
        child: TitlePinWidget(
          title: "فروش",
          onDateRangeSelected: (DateTimeRange value) {},
        ),
      ),
      SliverList.separated(
        itemBuilder: (context, index) => _ContentWidget(
          chartsData: chartsData.schedulePerformanceComparisonCharts![index],
        ),
        separatorBuilder: (context, index) => const SizedBox(
          height: 16,
        ),
        itemCount: chartsData.schedulePerformanceComparisonCharts?.length ?? 0,
      ),
    ]);
  }
}

class _ContentWidget extends StatelessWidget {
  final SchedulePerformanceComparisonCharts chartsData;

  const _ContentWidget({super.key, required this.chartsData});

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
        SaleBarChart(
          data: chartsData.data ?? [],
        )
      ],
    );
  }
}
