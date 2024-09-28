import 'package:mpm/domain/repository/project/project_repository.dart';

class DeleteProjectDataUseCase {
  final ProjectRepository _apiRepository;
  final ProjectRepository _localRepository;

  DeleteProjectDataUseCase(
      {required ProjectRepository apiRepository,
      required ProjectRepository localRepository})
      : _apiRepository = apiRepository,
        _localRepository = localRepository;

  Future<void> execute(String projectDataId) {
    if (projectDataId.toLowerCase().startsWith('local_')) {
      return _localRepository.deleteProjectData(projectDataId);
    } else {
      return _apiRepository.deleteProjectData(projectDataId);
    }
  }
}
