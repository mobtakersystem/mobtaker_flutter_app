import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/widget/error.dart';
import 'package:mpm/presentation/project_data/project_data_item_widget.dart';
import 'package:mpm/presentation/project_data_store/list_local_data_buttne_widget.dart';
import 'package:mpm/presentation/project_data_store/sync_provider/get_local_sync_data_provider.dart';

class LocalsProjectDataPage extends ConsumerWidget {
  const LocalsProjectDataPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localsProjectData = ref.watch(getLocalSndSyncDataProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('داده های محلی پروژها'),
      ),
      body: localsProjectData.when(
        data: (projectData) {
          if (projectData.isEmpty) {
            return const Center(child: Text("داده‌ای برای نمایش یافت نشد."));
          }
          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemBuilder: (context, index) => ProjectDataItemWidget(
              projectData: projectData[index],
            ),
            separatorBuilder: (context, index) => const SizedBox.square(
              dimension: 10,
            ),
            itemCount: projectData.length,
          );
        },
        error: (error, stackTrace) => RetryFailureWidget(
          error: error,
          tryAgain: () {
            ref.invalidate(getLocalSndSyncDataProvider);
          },
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
