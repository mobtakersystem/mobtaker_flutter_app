import 'package:get_it/get_it.dart';
import 'package:mpm/common/sl_config.dart';
import 'package:mpm/data/entities/project/project_data_entity.dart';
import 'package:mpm/domain/repository/project/project_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'project_data_item_provider.g.dart';

@riverpod
Stream<DataSyncStatus?> projectItemSyncStatus(ref, String projectId) async* {
  final result =
      GetIt.I<ProjectRepository>(instanceName: ProviderType.local.name)
          .listenToLocalProjectItem(projectId)
          .asyncMap(
            (event) => event?.syncStatus,
          );
  await for (final event in result) {
    yield event;
  }
}

@riverpod
Stream<ProjectDataEntity> projectItemStream(
    ref, ProjectDataEntity projectData) async* {
  final result =
      GetIt.I<ProjectRepository>(instanceName: ProviderType.local.name)
          .listenToLocalProjectItem(projectData.id);
  await for (final event in result) {
    yield event ?? projectData;
  }
}
