import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/riverpod_helper.dart';
import 'package:mpm/common/widget/select_period_widget.dart';
import 'package:mpm/common/widget/switch_with_title_widget.dart';
import 'package:mpm/data/entities/dashboard_chart/production_chart_entity.dart';
import 'package:mpm/domain/repository/dashboard/dashboard_slug_data.dart';
import 'package:mpm/presentation/project_analytics_data/pin_title_widget.dart';
import 'package:mpm/presentation/project_analytics_data/production_charts/production_chart_widget.dart';
import 'package:mpm/presentation/project_analytics_data/production_charts/production_table_widget.dart';
import 'package:mpm/presentation/project_analytics_data/production_charts/providers/production_chart_provider.dart';
import 'package:mpm/presentation/project_analytics_data/production_charts/providers/production_filter_provider.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:sliver_tools/sliver_tools.dart';

class ProductionChartWidget extends HookConsumerWidget {
  final Key? topWidgetKey;

  const ProductionChartWidget({
    super.key,
    this.topWidgetKey,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filters = ref.watch(productionFilterProvider);
    final productionChart = ref.watch(productionChartProvider);
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
                title: "گزارش تولید",
                initialDateRange: filters.dateRange,
                onDateRangeSelected: (DateTimeRange value) {
                  ref
                      .read(productionFilterProvider.notifier)
                      .setDateRange(value);
                },
                onFilterCleared: () {
                  ref.read(productionFilterProvider.notifier).clearDateRange();
                },
              ),
            ),
            SliverRiverPodConnectionHelperWidget(
              value: productionChart,
              placeHolderConstraints: BoxConstraints(
                minHeight: context.height * 0.7,
              ),
              tryAgain: () {
                ref.refresh(productionChartProvider);
              },
              successBuilder: (chartsData) => SliverList.separated(
                itemBuilder: (context, index) => _ContentWidget(
                  chartsData:
                      chartsData.schedulePerformanceComparisonCharts![index],
                  showFilter: index == 0,
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 16,
                ),
                itemCount:
                    chartsData.schedulePerformanceComparisonCharts?.length ?? 0,
              ),
            ),
          ]),
        )
      ],
    );
  }
}

class _ContentWidget extends ConsumerWidget {
  final SchedulePerformanceComparisonCharts chartsData;
  final bool showFilter;

  const _ContentWidget({
    required this.chartsData,
    this.showFilter = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filters = ref.watch(productionFilterProvider);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(chartsData.productName ?? "",
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            )),
        if (filters.dateRange != null && chartsData.startDate != null) ...[
          const SizedBox(
            height: 8,
          ),
          Text(
            "(${chartsData.startDate?.toPersianDate()}- ${chartsData.endDate?.toPersianDate()})",
            style: context.textTheme.bodySmall,
          ),
        ],
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
        if (showFilter) ...[
          SelectPeriodWidget(
            selectedPeriod: filters.chartPeriod,
            onChanged: (value) {
              ref.read(productionFilterProvider.notifier).setChartPeriod(value);
            },
            periods: ChartPeriod.values,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SwitchWithTitleWidget(
                value: filters.showDetails,
                onChanged: (value) {
                  ref
                      .read(productionFilterProvider.notifier)
                      .setShowDetails(value);
                },
                title: "نمایش جزئیات",
              ),
              const SizedBox(
                width: 16,
              ),
              SwitchWithTitleWidget(
                value: filters.showChartCumulative,
                onChanged: (value) {
                  ref
                      .read(productionFilterProvider.notifier)
                      .setShowChartCumulative(
                    value,
                    onValidateError: (value) {
                      context.showErrorMessage(value);
                    },
                  );
                },
                title: "نمایش تجمعی",
              ),
            ],
          ),
        ],
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
