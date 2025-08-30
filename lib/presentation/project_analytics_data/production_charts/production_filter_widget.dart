import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/widget/select_period_widget.dart';
import 'package:mpm/common/widget/switch_with_title_widget.dart';
import 'package:mpm/domain/repository/dashboard/dashboard_slug_data.dart';
import 'package:mpm/presentation/project_analytics_data/production_charts/providers/production_filter_provider.dart';

class ProductionFilterWidget extends ConsumerWidget {
  const ProductionFilterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filters = ref.watch(productionFilterProvider);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
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
    );
  }
}
