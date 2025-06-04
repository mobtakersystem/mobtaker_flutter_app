import 'package:flutter/material.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

class TitlePinWidget extends StatelessWidget {
  final String title;
  final DateTimeRange? initialDateRange;
  final ValueSetter<DateTimeRange> onDateRangeSelected;
  final VoidCallback onFilterCleared;

  const TitlePinWidget({
    super.key,
    required this.title,
    this.initialDateRange,
    required this.onDateRangeSelected,
    required this.onFilterCleared,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        children: [
          Text(
            title,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Badge(
            largeSize: 24,
            isLabelVisible: initialDateRange != null,
            label: InkWell(
              onTap: onFilterCleared,
              child: Icon(
                Icons.close,
                size: 18,
                color: context.theme.badgeTheme.textColor,
              ),
            ),
            child: IconButton.filledTonal(
              onPressed: () {
                _dateRangePicker(context);
              },
              icon: const Icon(Icons.filter_alt),
            ),
          ),
        ],
      ),
    );
  }

  void _dateRangePicker(BuildContext context) {
    showPersianDateRangePicker(
      context: context,
      firstDate: Jalali(1380),
      lastDate: Jalali.now(),
      initialDate: Jalali.now(),
      initialDateRange: initialDateRange == null
          ? null
          : JalaliRange(
              start: DateTimeExt(initialDateRange!.start).toJalali(),
              end: DateTimeExt(initialDateRange!.end).toJalali(),
            ),
    ).then(
      (value) {
        if (value != null) {
          onDateRangeSelected.call(
            DateTimeRange(
              start: value.start.toDateTime(),
              end: value.end.toDateTime(),
            ),
          );
        }
      },
    );
  }
}
