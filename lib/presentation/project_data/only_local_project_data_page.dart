import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/extention/date_time.dart';
import 'package:mpm/common/widget/dialog/confirm_dialog.dart';
import 'package:mpm/common/widget/error.dart';
import 'package:mpm/data/entities/project/project_data_entity.dart';
import 'package:mpm/domain/use_case/delete_project_data.dart';
import 'package:mpm/presentation/project_data/project_data_item_widget.dart';
import 'package:mpm/presentation/project_data_store/sync_provider/get_local_sync_data_provider.dart';

class LocalsProjectDataPage extends ConsumerWidget {
  const LocalsProjectDataPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localsProjectData = ref.watch(getLocalSndSyncDataProvider);
    final lastUpdateState = ref.watch(lastSyncUpdateProvider);
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('داده های محلی پروژها'),
            const SizedBox.square(
              dimension: 2,
            ),
            lastUpdateState.maybeWhen(
              data: (lastUpdate) => Text(
                lastUpdate?.getTimeAgo() ?? "-",
                style: context.textTheme.bodySmall,
              ),
              orElse: () => const SizedBox.shrink(),
            )
          ],
        ),
      ),
      body: localsProjectData.when(
        data: (projectData) {
          if (projectData.isEmpty) {
            return const Center(child: Text("داده‌ای برای نمایش یافت نشد."));
          }
          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemBuilder: (context, index) => _ItemWidget(
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

class _ItemWidget extends StatelessWidget {
  final ProjectDataEntity projectData;

  const _ItemWidget({
    super.key,
    required this.projectData,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: Key(projectData.id.toString()),
      endActionPane: ActionPane(
        // A motion is a widget used to control how the pane animates.
        motion: const ScrollMotion(),
        openThreshold: 0.15,
        children: [
          SlidableAction(
            borderRadius: BorderRadius.circular(16),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            onPressed: (ctx) {
              ConfirmDialog.show(
                ctx,
                message: 'آیا از حذف این داده اطمینان دارید؟',
                confirmCallBack: () {
                  GetIt.I<DeleteProjectDataUseCase>()
                      .execute(projectData.id)
                      .catchError((error) {
                    context.showErrorMessage(error);
                  });
                },
              );
            },
            backgroundColor: context.colorScheme.error,
            foregroundColor: context.colorScheme.onError,
            icon: Icons.delete,
            label: 'حذف',
          ),
        ],
      ),
      child: ProjectDataItemWidget(
        projectData: projectData,
      ),
    );
  }
}
