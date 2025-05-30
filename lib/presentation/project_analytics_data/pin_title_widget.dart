import 'package:flutter/material.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

class TitlePinWidget extends StatelessWidget {
  final String title;
  final DateTimeRange? initialDateRange;
  final ValueSetter<DateTimeRange> onDateRangeSelected;

  const TitlePinWidget({
    super.key,
    required this.title,
    this.initialDateRange,
    required this.onDateRangeSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Row(
          children: [
            Text(
              title,
              style: context.textTheme.titleMedium,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.fullscreen,
              ),
            ),
            IconButton(
              onPressed: () {
                _dateRangePicker(context);
              },
              icon: const Icon(Icons.calendar_month),
            ),
          ],
        ),
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
