import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/data/entities/project/project_data_entity.dart';
import 'package:mpm/domain/use_case/get_and_sync_local_project_data.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class ProjectDataItemWidget extends ConsumerWidget {
  final ProjectDataEntity projectData;

  const ProjectDataItemWidget({super.key, required this.projectData});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: _ItemValue(
                    title: "تاریخ",
                    value: projectData.date?.toPersianDate() ?? "-",
                    valueStyle: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                    child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        projectData.isLocalRecord()
                            ? projectData.getSyncStatusText()
                            : '',
                        style: TextStyle(
                          color: context.errorColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    if (projectData.syncStatus == DataSyncStatus.failed)
                      IconButton(
                          onPressed: () {
                            GetIt.I<SetTryAgainSyncItemUseCase>()
                                .call(projectData);
                          },
                          icon: const Icon(
                            Icons.sync_problem,
                            color: Colors.red,
                            size: 16,
                          )),
                  ],
                ))
              ],
            ),
            const SizedBox.square(dimension: 8),
            Row(
              children: [
                Expanded(
                  child: _ItemValue(
                      title: "سرحفار", value: projectData.headDigger),
                ),
                const SizedBox.square(dimension: 8),
                Expanded(
                  child: _ItemValue(
                    title: "حفار",
                    value: projectData.digger,
                  ),
                ),
              ],
            ),
            const SizedBox.square(dimension: 8),
            Row(
              children: [
                Expanded(
                  child: _ItemValue(
                    title: "ماشین",
                    value: projectData.machinery,
                  ),
                ),
                const SizedBox.square(dimension: 8),
                Expanded(
                  child: _ItemValue(
                    title: "شیفت",
                    value: ShiftStatus.values
                        .firstWhere(
                          (item) => item.name == projectData.shift,
                          orElse: () => ShiftStatus.morning,
                        )
                        .getName(),
                  ),
                ),
              ],
            ),
            const SizedBox.square(dimension: 8),
            Row(
              children: [
                Expanded(
                  child: _ItemValue(
                    title: "متراژ اولیه",
                    value: projectData.initialMeter.toString(),
                  ),
                ),
                const SizedBox.square(dimension: 8),
                Expanded(
                  child: _ItemValue(
                    title: "متراژ نهایی",
                    value: projectData.finalMeter.toString(),
                  ),
                ),
              ],
            ),
            const SizedBox.square(dimension: 8),
            _ItemValue(
              title: 'ساعت کارکرد دستگاه',
              value: projectData.machineryWorkingHour,
              valueStyle: const TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

class _ItemValue extends StatelessWidget {
  final String title;
  final String value;
  final TextStyle? valueStyle;

  const _ItemValue({required this.title, required this.value, this.valueStyle});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "$title: ",
          ),
          TextSpan(
            text: value,
            style: valueStyle,
          ),
        ],
      ),
    );
  }
}
