import 'package:get_it/get_it.dart';
import 'package:mpm/data/entities/pagination/pagination.dart';
import 'package:mpm/data/entities/project/project_entity.dart';
import 'package:mpm/domain/failure_model.dart';
import 'package:mpm/domain/repository/local_handler/locaLhandler_data.dart';
import 'package:mpm/domain/repository/project/project_repository.dart';

class ProjectIndexUseCase {
  final ProjectRepository _apiRepository;
  final ProjectRepository _localRepository;

  ProjectIndexUseCase(
      {required ProjectRepository apiRepository,
      required ProjectRepository localRepository})
      : _apiRepository = apiRepository,
        _localRepository = localRepository;

  Stream<ResultData<PaginationEntity<ProjectEntity>>> call() async* {
    final localResult = await _localRepository.getProjects();
    if (localResult.isRight()) {
      print("GET LOCAL");
      yield localResult;
      final apiResult = await _apiRepository.getProjects();
      print("GET API");
      if (apiResult.isRight()) {
        print("GET API SUCCESS");
        yield apiResult;
        await _updateLocal(apiResult.getRight().toNullable()?.data ?? []);
      } else if (apiResult.getLeft().toNullable() is AccessDeniedFailure ||
          apiResult.getLeft().toNullable() is UnAuthorizedFailure) {
        print("API ACCESS DENIED");
        yield apiResult;
      }
    } else {
      print("GET API 2");
      final apiResult = await _apiRepository.getProjects();
      print("GET API 2 SUCCESS");
      yield apiResult;
      if (apiResult.isRight()) {
        await _updateLocal(apiResult.getRight().toNullable()?.data ?? []);
      }
    }
  }

  Future<void> _updateLocal(List<ProjectEntity> projects) async {
    final update = await _localRepository.writeProjects(projects);
    update.fold(
      (l) {
        print("UPDATE LOCAL 2 FAILED");
      },
      (r) {
        GetIt.I<LocalHandlerRepository>()
            .setLastUpdateProjectIndex(DateTime.now());
      },
    );
  }
}
