import 'package:mpm/data/entities/project/project_data_entity.dart';
import 'package:mpm/domain/failure_model.dart';
import 'package:mpm/domain/repository/project/project_repository.dart';

class StoreProjectDataInLocalUseCase {
  final ProjectRepository _localRepository;

  StoreProjectDataInLocalUseCase({required ProjectRepository localRepository})
      : _localRepository = localRepository;

  Future<ResultData<void>> call({
    required ProjectDataEntity data,
  }) async {
    return await _localRepository.storeProjectData(data);
  }
}

class StoreProjectDataInServerUseCase {
  final ProjectRepository _apiRepository;

  StoreProjectDataInServerUseCase({required ProjectRepository apiRepository})
      : _apiRepository = apiRepository;

  Future<ResultData<void>> call({
    required ProjectDataEntity data,
  }) async {
    return await _apiRepository.storeProjectData(data);
  }
}
