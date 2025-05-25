import 'package:flutter/material.dart';
import 'package:mpm/data/entities/dashboard_chart/stop_chart_entity.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class StopDetailsTableWidget extends StatelessWidget {
  final List<Details> details;

  const StopDetailsTableWidget({
    super.key,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => _ItemWidget(details: details[index]),
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemCount: details.length,
    );
  }
}

class _ItemWidget extends StatelessWidget {
  final Details details;

  const _ItemWidget({required this.details});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  details.date?.toPersianDate() ?? '-',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    details.type?.title ?? 'N/A',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: _InfoItem(
                    label: 'شروع',
                    value: details.start ?? 'N/A',
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _InfoItem(
                    label: 'پایان',
                    value: details.end ?? 'N/A',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: _InfoItem(
                    label: 'دلیل توقف',
                    value: details.reason ?? 'N/A',
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _InfoItem(
                    label: 'مجموع',
                    value: '${details.duration ?? 0} دقیقه',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  final String label;
  final String value;

  const _InfoItem({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
        ),
        const SizedBox.square(dimension: 4),
        Text(
          value,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
      ],
    );
  }
}
