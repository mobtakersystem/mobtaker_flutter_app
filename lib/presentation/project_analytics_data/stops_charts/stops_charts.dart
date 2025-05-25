import 'package:flutter/material.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/data/entities/dashboard_chart/stop_chart_entity.dart';
import 'package:mpm/presentation/project_analytics_data/pin_title_widget.dart';
import 'package:mpm/presentation/project_analytics_data/stops_charts/stop_details_table_widget.dart';
import 'package:mpm/presentation/project_analytics_data/stops_charts/stops_bar_chart_widget.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:sliver_tools/sliver_tools.dart';

class StopChartsWidget extends StatelessWidget {
  final StopChartEntity chartsData;

  const StopChartsWidget({super.key, required this.chartsData});

  @override
  Widget build(BuildContext context) {
    return MultiSliver(pushPinnedChildren: true, children: [
      const SliverPinnedHeader(
        child: TitlePinWidget(title: "گزارش توقفات"),
      ),
      SliverList.separated(
        itemBuilder: (context, index) => _ContentWidget(
          chartsData: chartsData.stopCharts![index],
        ),
        separatorBuilder: (context, index) => const SizedBox(
          height: 16,
        ),
        itemCount: chartsData.stopCharts?.length ?? 0,
      ),
    ]);
  }
}

class _ContentWidget extends StatelessWidget {
  final StopCharts chartsData;

  const _ContentWidget({required this.chartsData});

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
          height: 8,
        ),
        Text(
          "(${chartsData.startDate?.toPersianDate()}- ${chartsData.endDate?.toPersianDate()})",
          style: context.textTheme.bodySmall,
        ),
        const SizedBox(
          height: 16,
        ),
        StopsBarChart(
          data: chartsData.data ?? [],
        ),
        if (chartsData.details?.isNotEmpty ?? false) ...[
          const SizedBox(
            height: 16,
          ),
          Text(
            "لیست توقفات",
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          StopDetailsTableWidget(details: chartsData.details ?? []),
        ]
      ],
    );
  }
}
