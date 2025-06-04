import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/extention/date_time.dart';
import 'package:mpm/common/riverpod_helper.dart';
import 'package:mpm/common/widget/dialog/confirm_dialog.dart';
import 'package:mpm/common/widget/version_widget.dart';
import 'package:mpm/presentation/auth/providers/auth_provider.dart';
import 'package:mpm/presentation/project_data_store/list_local_data_buttne_widget.dart';
import 'package:mpm/presentation/project_data_store/sync_provider/get_local_sync_data_provider.dart';
import 'package:mpm/presentation/project_index/project_item_widget.dart';
import 'package:mpm/presentation/splash_page.dart';
import 'package:mpm/routes/app_router.gr.dart';

import 'index_provider.dart';

@RoutePage()
class ProjectsIndexPage extends ConsumerWidget {
  const ProjectsIndexPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(getLocalSndSyncDataProvider);
    final lastUpdateState = ref.watch(projectIndexLastUpdateProvider);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(
            Icons.menu,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('پروژه ها'),
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
        actions: const [ListLocalDataButtonWidget()],
      ),
      body: RiverPodConnectionHelperWidget(
        value: ref.watch(projectIndexProvider),
        successBuilder: (page) {
          return RefreshIndicator(
            onRefresh: () => ref.refresh(projectIndexProvider.future),
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              itemBuilder: (context, index) {
                final project = page.data[index];
                return ProjectItemWidget(project: project);
              },
              separatorBuilder: (context, index) => const SizedBox.square(
                dimension: 16,
              ),
              itemCount: page.data.length,
            ),
          );
        },
        tryAgain: () {
          ref.invalidate(projectIndexProvider);
        },
      ),
    );
  }
}
