import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/riverpod_helper.dart';
import 'package:mpm/common/widget/select_period_widget.dart';
import 'package:mpm/common/widget/switch_with_title_widget.dart';
import 'package:mpm/data/entities/dashboard_chart/stop_chart_entity.dart';
import 'package:mpm/domain/repository/dashboard/dashboard_slug_data.dart';
import 'package:mpm/presentation/project_analytics_data/pin_title_widget.dart';
import 'package:mpm/presentation/project_analytics_data/stops_charts/providers/stops_chart_provider.dart';
import 'package:mpm/presentation/project_analytics_data/stops_charts/providers/stops_filter_provider.dart';
import 'package:mpm/presentation/project_analytics_data/stops_charts/stop_details_table_widget.dart';
import 'package:mpm/presentation/project_analytics_data/stops_charts/stops_bar_chart_widget.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:sliver_tools/sliver_tools.dart';

class StopChartsWidget extends ConsumerWidget {
  final Key? topWidgetKey;

  const StopChartsWidget({super.key, this.topWidgetKey});

  @override
  Widget build(BuildContext context, ref) {
    final filters = ref.watch(stopsFilterProvider);
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
                title: "گزارش توقفات",
                onDateRangeSelected: (DateTimeRange value) {
                  ref.read(stopsFilterProvider.notifier).setDateRange(value);
                },
                onFilterCleared: () {
                  ref.read(stopsFilterProvider.notifier).clearDateRange();
                },
                initialDateRange: filters.dateRange,
              ),
            ),
            SliverToBoxAdapter(
              child: SelectPeriodWidget(
                selectedPeriod: filters.chartPeriod,
                onChanged: (value) {
                  ref.read(stopsFilterProvider.notifier).setChartPeriod(value);
                },
                periods: ChartPeriod.values,
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SwitchWithTitleWidget(
                    value: filters.showDetails,
                    onChanged: (value) {
                      ref.read(stopsFilterProvider.notifier).setShowDetails(value);
                    },
                    title: "نمایش جزئیات",
                  ),
                ],
              ),
            ),
            SliverRiverPodConnectionHelperWidget(
              value: ref.watch(stopsChartProvider),
              placeHolderConstraints: BoxConstraints(
                minHeight: context.height * 0.7,
              ),
              tryAgain: () {
                ref.refresh(stopsChartProvider);
              },
              successBuilder: (chartsData) => SliverList.separated(
                itemBuilder: (context, index) => _ContentWidget(
                  chartsData: chartsData.stopCharts![index],
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 16,
                ),
                itemCount: chartsData.stopCharts?.length ?? 0,
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

class _ContentWidget extends HookConsumerWidget {
  final StopCharts chartsData;

  const _ContentWidget({required this.chartsData});

  @override
  Widget build(BuildContext context, ref) {
    final showList = useState(false);
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
          showLable: (chartsData.data?.length ?? 0) <= 4,
        ),
        if (chartsData.details?.isNotEmpty ?? false) ...[
          AnimatedContainer(
            duration: const Duration(milliseconds: 600),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              border: Border.all(
                color: context.theme.dividerColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  onTap: () {
                    showList.value = !showList.value;
                  },
                  title: Text(
                    "لیست توقفات",
                    style: context.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: IgnorePointer(
                    ignoring: true,
                    child: showList.value
                        ? IconButton(
                            icon: const Icon(Icons.keyboard_arrow_up_outlined),
                            onPressed: () {},
                          )
                        : IconButton(
                            icon: const Icon(Icons.keyboard_arrow_down_rounded),
                            onPressed: () {},
                          ),
                  ),
                ),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 700),
                  child: showList.value
                      ? StopDetailsTableWidget(
                          details: chartsData.details ?? [])
                      : const SizedBox.shrink(),
                ),
              ],
            ),
          ),
        ]
      ],
    );
  }
}
