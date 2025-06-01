import 'package:flutter/material.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/domain/repository/dashboard/dashboard_slug_data.dart';

class SelectPeriodWidget extends StatelessWidget {
  final ChartPeriod? selectedPeriod;
  final ValueChanged<ChartPeriod> onChanged;
  final List<ChartPeriod> periods;

  const SelectPeriodWidget({
    super.key,
    this.selectedPeriod,
    required this.onChanged,
    required this.periods,
  });

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
