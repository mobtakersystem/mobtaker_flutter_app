import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/data/entities/project/project_data_entity.dart';
import 'package:mpm/presentation/project_data/only_local_project_data_page.dart';
import 'package:mpm/presentation/project_data_store/sync_provider/get_local_sync_data_provider.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class ListLocalDataButtonWidget extends ConsumerWidget {
  const ListLocalDataButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(getLocalSndSyncDataProvider);
    return IconButton(
      icon: Badge(
          label: Text(
            data.maybeWhen(
                data: (data) => data
                    .where(
                      (element) => element.syncStatus != DataSyncStatus.synced,
                    )
                    .length
                    .toString()
                    .toPersianDigit(),
                orElse: () => '0'),
            style: const TextStyle(color: Colors.white),
          ),
          largeSize: 20,
          isLabelVisible: data.maybeWhen(
            orElse: () => false,
            data: (data) => data
                .where(
                  (element) => element.syncStatus != DataSyncStatus.synced,
                )
                .isNotEmpty,
          ),
          textStyle: const TextStyle(fontSize: 12, color: Colors.white),
          child: const Icon(Icons.cloud_upload_outlined)),
      onPressed: () {
        context.push(const LocalsProjectDataPage());
      },
    );
  }
}
