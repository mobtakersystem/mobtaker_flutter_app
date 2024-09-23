import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/riverpod_helper.dart';
import 'package:mpm/presentation/project_data_store/list_local_data_buttne_widget.dart';
import 'package:mpm/presentation/project_data_store/sync_provider/get_local_sync_data_provider.dart';
import 'package:mpm/presentation/project_index/project_item_widget.dart';

import 'index_provider.dart';

class ProjectsIndex extends ConsumerWidget {
  const ProjectsIndex({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('پروژه ها'),
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
