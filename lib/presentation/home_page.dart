import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/presentation/project_analytics_data/dashboard_page.dart';
import 'package:mpm/presentation/project_data_store/sync_provider/get_local_sync_data_provider.dart';
import 'package:mpm/presentation/project_index/index_page.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.watch(getLocalSndSyncDataProvider);
    return const DashboardPage();
  }
}
