import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/extention/date_time.dart';
import 'package:mpm/common/riverpod_helper.dart';
import 'package:mpm/common/widget/dialog/confirm_dialog.dart';
import 'package:mpm/common/widget/version_widget.dart';
import 'package:mpm/presentation/auth/providers/auth_provider.dart';
import 'package:mpm/presentation/project_data_store/list_local_data_buttne_widget.dart';
import 'package:mpm/presentation/project_index/project_item_widget.dart';
import 'package:mpm/presentation/splash_page.dart';

import 'index_provider.dart';

class ProjectsIndex extends ConsumerWidget {
  const ProjectsIndex({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lastUpdateState = ref.watch(projectIndexLastUpdateProvider);
    return Scaffold(
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * .6,
        child: Material(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24, left: 8, right: 8),
                  child: Image.asset("assets/images/logo.png"),
                ),
                const Spacer(),
                ListTile(
                  title: const Text("خروج از برنامه"),
                  onTap: () {
                    ConfirmDialog.show(
                      context,
                      message: "آیا از خروج از برنامه اطمینان دارید؟",
                      confirmCallBack: () {
                        ref.read(authProvider.notifier).unAuthenticated().then(
                          (value) {
                            if (context.mounted) {
                              context.popAllAndPush(const SplashPage());
                            }
                          },
                        );
                      },
                    );
                  },
                  leading: const Icon(Icons.logout),
                ),
                const VersionWidget()
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
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
