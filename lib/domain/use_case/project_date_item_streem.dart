import 'package:mpm/data/entities/project/project_data_entity.dart';
import 'package:mpm/domain/repository/project/project_repository.dart';

class ProjectDataItemStreamUseCase {
  final ProjectRepository _localRepository;

  ProjectDataItemStreamUseCase({required ProjectRepository localRepository})
      : _localRepository = localRepository;

  Stream<DataSyncStatus?> call(String projectId) async* {
    final result =
        _localRepository.listenToLocalProjectItem(projectId).asyncMap(
              (event) => event?.syncStatus,
            );
    await for (final event in result) {
      yield event;
    }
  }
}
