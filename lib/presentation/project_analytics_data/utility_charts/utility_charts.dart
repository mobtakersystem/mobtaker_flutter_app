import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/riverpod_helper.dart';
import 'package:mpm/common/widget/error.dart';
import 'package:mpm/data/entities/dashboard_chart/utility_chart_entity.dart'
    as entity;
import 'package:mpm/domain/repository/dashboard/dashboard_slug_data.dart';
import 'package:mpm/presentation/project_analytics_data/pin_title_widget.dart';
import 'package:mpm/presentation/project_analytics_data/utility_charts/providers/utility_chart_provider.dart';
import 'package:mpm/presentation/project_analytics_data/utility_charts/providers/utility_filter_provider.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'utility_column_chart_widget.dart';

class UtilityChartsWidget extends HookConsumerWidget {
  final entity.UtilityChartEntity chartsData;

  const UtilityChartsWidget({super.key, required this.chartsData});

  @override
  Widget build(BuildContext context, ref) {
    final selectedProduct = useState<String?>(null);
    final chartDataState =
        ref.watch(utilityChartProvider(selectedProduct.value));
    if (selectedProduct.value == null &&
        chartsData.utilityProducts?.isNotEmpty == true) {
      selectedProduct.value =
          chartsData.utilityProducts?.first.utilityProductId;
    }
    final filters = ref.watch(utilityFilterProvider);
    return MultiSliver(pushPinnedChildren: true, children: [
      SliverPinnedHeader(
        child: TitlePinWidget(
          title: "گزارش یوتیلیتی",
          initialDateRange: filters.dateRange,
          onDateRangeSelected: (DateTimeRange value) {
            ref.read(utilityFilterProvider.notifier).setDateRange(value);
          },
        ),
      ),
      SliverToBoxAdapter(
        child: SizedBox(
          height: 48,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => FilterChip(
              label: Text(chartsData.utilityProducts![index].displayName ?? ""),
              onSelected: (value) {
                selectedProduct.value =
                    chartsData.utilityProducts![index].utilityProductId;
              },
              selected: selectedProduct.value ==
                  chartsData.utilityProducts![index].utilityProductId,
            ),
            separatorBuilder: (context, index) => const SizedBox.square(
              dimension: 16,
            ),
            itemCount: chartsData.utilityProducts?.length ?? 0,
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: SelectPeriodWidget(
          selectedPeriod: filters.chartPeriod,
          onChanged: (value) {
            ref.read(utilityFilterProvider.notifier).setChartPeriod(value);
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
                ref.read(utilityFilterProvider.notifier).setShowDetails(value);
              },
              title: "نمایش جزئیات",
            ),
            const SizedBox(
              width: 16,
            ),
            SwitchWithTitleWidget(
              value: filters.showChartCumulative,
              onChanged: (value) {
                ref.read(utilityFilterProvider.notifier).setShowChartCumulative(
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
      SliverPadding(
        padding: const EdgeInsets.only(top: 8),
        sliver: RiverPodConnectionHelperWidget(
          value: chartDataState,
          successBuilder: (p0) => SliverList.separated(
            itemBuilder: (context, index) => _ContentWidget(
              chartsData: p0.utilityChart![index],
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 16,
            ),
            itemCount: p0.utilityChart?.length ?? 0,
          ),
          tryAgain: () {},
          loadingBuilder: () => const SliverToBoxAdapter(
            child: SizedBox(
              height: 200,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
          failureBuilder: (error) => SliverToBoxAdapter(
              child: SizedBox(
            height: 200,
            child: RetryFailureWidget(
              error: error,
              tryAgain: () {
                ref.invalidate(utilityChartProvider(selectedProduct.value));
              },
            ),
          )),
        ),
      ),
    ]);
  }
}

class _ContentWidget extends ConsumerWidget {
  final entity.UtilityChart chartsData;

  const _ContentWidget({required this.chartsData});

  @override
  Widget build(BuildContext context, ref) {
    final filters = ref.watch(utilityFilterProvider);
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
        UtilityColumnChart(
          data: chartsData.data ?? [],
        )
      ],
    );
  }
}

class SelectPeriodWidget extends StatelessWidget {
  final ChartPeriod? selectedPeriod;
  final ValueChanged<ChartPeriod> onChanged;
  final List<ChartPeriod> periods;

  const SelectPeriodWidget(
      {super.key,
      this.selectedPeriod,
      required this.onChanged,
      required this.periods});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Center(
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.sort,
                    size: 15,
                  ),
                  Text(" دوره زمانی :"),
                ],
              );
            }
            final period = periods[index - 1];
            return ChoiceChip(
              label: Text(_getPeriodName(period)),
              selected: selectedPeriod == period,
              onSelected: (value) {
                if (value) {
                  onChanged(period);
                }
              },
              showCheckmark: false,
              selectedColor: Colors.transparent,
              backgroundColor: context.theme.scaffoldBackgroundColor,
              labelStyle: context.textTheme.bodySmall?.copyWith(
                color: selectedPeriod == period
                    ? context.colorScheme.secondary
                    : context.colorScheme.onSurface.withAlpha(150),
                fontWeight: FontWeight.w600,
              ),
              side: const BorderSide(
                color: Colors.transparent,
                width: 0,
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox.square(
            dimension: 0,
          ),
          itemCount: periods.length + 1,
        ),
      ),
    );
  }

  String _getPeriodName(ChartPeriod period) {
    switch (period) {
      case ChartPeriod.daily:
        return "روزانه";
      case ChartPeriod.monthly:
        return "ماهانه";
      case ChartPeriod.yearly:
        return "سالانه";
    }
  }
}

class SwitchWithTitleWidget extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final String title;

  const SwitchWithTitleWidget({
    super.key,
    required this.value,
    required this.onChanged,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      borderRadius: BorderRadius.circular(16),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: context.textTheme.bodySmall,
          ),
          const SizedBox(
            width: 8,
          ),
          Transform.scale(
            scale: 0.5,
            alignment: AlignmentDirectional.centerStart,
            child: Switch(
              value: value,
              onChanged: onChanged,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
          ),
        ],
      ),
    );
  }
}
