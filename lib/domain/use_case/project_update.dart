import 'package:mpm/data/entities/project/project_data_entity.dart';
import 'package:mpm/domain/failure_model.dart';
import 'package:mpm/domain/repository/project/project_repository.dart';

class UpdateProjectDataInLocalUseCase {
  final ProjectRepository _localRepository;

  UpdateProjectDataInLocalUseCase({required ProjectRepository localRepository})
      : _localRepository = localRepository;

  Future<ResultData<void>> call({
    required ProjectDataEntity data,
  }) async {
    return await _localRepository.updateProjectData(data.copyWith(
      syncType: DataSyncType.update,
      syncStatus: DataSyncStatus.pending,
      updatedAt: DateTime.now(),
    ));
  }
}

class UpdateProjectDataInServerUseCase {
  final ProjectRepository _apiRepository;

  UpdateProjectDataInServerUseCase({required ProjectRepository apiRepository})
      : _apiRepository = apiRepository;

  Future<ResultData<void>> call({
    required ProjectDataEntity data,
  }) async {
    return await _apiRepository.updateProjectData(data);
  }
}
