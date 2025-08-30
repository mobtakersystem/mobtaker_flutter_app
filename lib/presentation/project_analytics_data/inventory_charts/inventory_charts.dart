import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/riverpod_helper.dart';
import 'package:mpm/data/entities/dashboard_chart/enventory_chart_entity.dart'
    as entity;
import 'package:mpm/presentation/project_analytics_data/inventory_charts/inventory_bar_chart_widget.dart';
import 'package:mpm/presentation/project_analytics_data/inventory_charts/providers/inventory_chart_provider.dart';
import 'package:mpm/presentation/project_analytics_data/inventory_charts/providers/inventory_filter_provider.dart';
import 'package:mpm/presentation/project_analytics_data/pin_title_widget.dart';
import 'package:sliver_tools/sliver_tools.dart';

class InventoryChartsWidget extends ConsumerWidget {
  final Key? topWidgetKey;

  const InventoryChartsWidget({super.key, this.topWidgetKey});

  @override
  Widget build(BuildContext context, ref) {
    return SliverStack(
      children: [
        SliverPositioned.fill(
            child: Card.outlined(
          key: topWidgetKey,
          margin: const EdgeInsets.all(8),
        )),
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: MultiSliver(children: [
            SliverToBoxAdapter(
              child: TitlePinWidget(
                title: "گزارش موجودی",
                onDateRangeSelected: (DateTimeRange value) {
                  ref
                      .read(inventoryFilterProvider.notifier)
                      .setDateRange(value);
                },
                onFilterCleared: () {
                  ref.read(inventoryFilterProvider.notifier).clearDateRange();
                },
                initialDateRange: ref.watch(inventoryFilterProvider).dateRange,
              ),
            ),
            SliverRiverPodConnectionHelperWidget(
              placeHolderConstraints: BoxConstraints(
                minHeight: context.height * 0.7,
              ),
              value: ref.watch(inventoryChartProvider),
              successBuilder: (chartsData) => SliverList.separated(
                itemBuilder: (context, index) => _ContentWidget(
                  chartsData: chartsData.inventoryChart![index],
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 16,
                ),
                itemCount: chartsData.inventoryChart?.length ?? 0,
              ),
              tryAgain: () {
                ref.refresh(inventoryChartProvider);
              },
            ),
          ]),
        ),
      ],
    );
  }
}

class _ContentWidget extends StatelessWidget {
  final entity.InventoryChart chartsData;

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
          height: 16,
        ),
        InventoryBarChartWidget(
          data: chartsData,
        )
      ],
    );
  }
}
