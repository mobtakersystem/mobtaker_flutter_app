import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/riverpod_helper.dart';
import 'package:mpm/common/widget/select_period_widget.dart';
import 'package:mpm/common/widget/switch_with_title_widget.dart';
import 'package:mpm/data/entities/dashboard_chart/sale_data_chart_entity.dart';
import 'package:mpm/domain/repository/dashboard/dashboard_slug_data.dart';
import 'package:mpm/presentation/project_analytics_data/pin_title_widget.dart';
import 'package:mpm/presentation/project_analytics_data/sale_charts/providers/sale_chart_provider.dart';
import 'package:mpm/presentation/project_analytics_data/sale_charts/providers/sale_filter_provider.dart';
import 'package:mpm/presentation/project_analytics_data/sale_charts/sale_bar_chart_widget.dart';
import 'package:sliver_tools/sliver_tools.dart';

class SaleChartsWidget extends ConsumerWidget {
  const SaleChartsWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final filters = ref.watch(saleFilterProvider);
    return MultiSliver(pushPinnedChildren: true, children: [
      SliverToBoxAdapter(
        child: TitlePinWidget(
          title: "فروش",
          onDateRangeSelected: (DateTimeRange value) {},
        ),
      ),
      SliverToBoxAdapter(
        child: SelectPeriodWidget(
          selectedPeriod: filters.chartPeriod,
          onChanged: (value) {
            ref.read(saleFilterProvider.notifier).setChartPeriod(value);
          },
          periods: const [ChartPeriod.monthly, ChartPeriod.yearly],
        ),
      ),
      SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SwitchWithTitleWidget(
              value: filters.showDetails,
              onChanged: (value) {
                ref.read(saleFilterProvider.notifier).setShowDetails(value);
              },
              title: "نمایش جزئیات",
            ),
            const SizedBox(
              width: 16,
            ),
            SwitchWithTitleWidget(
              value: filters.showChartCumulative,
              onChanged: (value) {
                ref.read(saleFilterProvider.notifier).setShowChartCumulative(
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
      ),
      SliverRiverPodConnectionHelperWidget(
        value: ref.watch(saleChartProvider),
        successBuilder: (chartsData) => SliverList.separated(
          itemBuilder: (context, index) => _ContentWidget(
            chartsData: chartsData.schedulePerformanceComparisonCharts![index],
          ),
          separatorBuilder: (context, index) => const SizedBox(
            height: 16,
          ),
          itemCount:
              chartsData.schedulePerformanceComparisonCharts?.length ?? 0,
        ),
        tryAgain: () {
          ref.refresh(saleChartProvider);
        },
      ),
    ]);
  }
}

class _ContentWidget extends StatelessWidget {
  final SchedulePerformanceComparisonCharts chartsData;

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
        SaleBarChart(
          data: chartsData.data ?? [],
        )
      ],
    );
  }
}
