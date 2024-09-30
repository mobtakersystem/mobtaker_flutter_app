import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/riverpod_helper.dart';
import 'package:mpm/presentation/project_data/project_data_index_provider.dart';
import 'package:mpm/presentation/project_data/project_data_item_widget.dart';
import 'package:mpm/presentation/project_data/project_property_provider.dart';
import 'package:mpm/presentation/project_data_store/list_local_data_buttne_widget.dart';
import 'package:mpm/presentation/project_data_store/project_data_store_page.dart';

class ProjectDataPage extends ConsumerWidget {
  final String projectID;

  const ProjectDataPage({
    super.key,
    required this.projectID,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('داده پروژه'),
        actions: const [ListLocalDataButtonWidget()],
      ),
      body: RiverPodConnectionHelperWidget(
        value: ref.watch(
          getProjectPropertyProvider(
            projectID,
          ),
        ),
        successBuilder: (data) {
          return Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ElevatedButton.icon(
                  onPressed: () {
                    context
                        .push(ProjectDataStorePage(
                      projectId: projectID,
                    ))
                        .then(
                      (value) {
                        if (value != null) {
                          ref.invalidate(projectDataProvider(projectID));
                        }
                      },
                    );
                  },
                  label: const Text("افزودن عملکرد"),
                  icon: const Icon(Icons.add),
                ),
              ),
              Expanded(
                child: RiverPodConnectionHelperWidget(
                  key: const ValueKey("projectData"),
                  value: ref.watch(projectDataProvider(projectID)),
                  successBuilder: (projectData) {
                    if (projectData.data.isEmpty) {
                      return const Center(
                          child: Text("داده‌ای برای نمایش یافت نشد."));
                    }
                    return RefreshIndicator(
                      onRefresh: () =>
                          ref.refresh(projectDataProvider(projectID).future),
                      child: ListView.separated(
                        padding: const EdgeInsets.all(16),
                        itemBuilder: (context, index) => ProjectDataItemWidget(
                          projectData: projectData.data[index],
                        ),
                        separatorBuilder: (context, index) =>
                            const SizedBox.square(
                          dimension: 10,
                        ),
                        itemCount: projectData.data.length,
                      ),
                    );
                  },
                  tryAgain: () {
                    ref.invalidate(projectDataProvider(projectID));
                  },
                ),
              ),
            ],
          );
        },
        tryAgain: () {
          ref.invalidate(getProjectPropertyProvider(projectID));
        },
      ),
    );
  }
}
