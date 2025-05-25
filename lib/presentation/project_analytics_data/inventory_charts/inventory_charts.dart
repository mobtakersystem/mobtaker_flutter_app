import 'package:flutter/material.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/data/entities/dashboard_chart/enventory_chart_entity.dart';
import 'package:mpm/presentation/project_analytics_data/inventory_charts/inventory_bar_chart_widget.dart';
import 'package:mpm/presentation/project_analytics_data/pin_title_widget.dart';
import 'package:sliver_tools/sliver_tools.dart';

class InventoryChartsWidget extends StatelessWidget {
  final InventoryChartEntity chartsData;

  const InventoryChartsWidget({super.key, required this.chartsData});

  @override
  Widget build(BuildContext context) {
    return MultiSliver(pushPinnedChildren: true, children: [
      const SliverPinnedHeader(
        child: TitlePinWidget(title: "گزارش موجودی"),
      ),
      SliverList.separated(
        itemBuilder: (context, index) => _ContentWidget(
          chartsData: chartsData.inventoryChart![index],
        ),
        separatorBuilder: (context, index) => const SizedBox(
          height: 16,
        ),
        itemCount: chartsData.inventoryChart?.length ?? 0,
      ),
    ]);
  }
}

class _ContentWidget extends StatelessWidget {
  final InventoryChart chartsData;

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
        InventoryBarChartWidget(
          data: chartsData,
        )
      ],
    );
  }
}
