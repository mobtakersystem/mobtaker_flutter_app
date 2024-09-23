import 'package:mpm/data/entities/pagination/pagination.dart';
import 'package:mpm/data/entities/project/project_entity.dart';
import 'package:mpm/domain/failure_model.dart';
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
        final update = await _localRepository
            .writeProjects(apiResult.getRight().toNullable()?.data ?? []);
        update.fold(
          (l) {
            print("UPDATE LOCAL FAILED");
          },
          (r) {
            print("UPDATE LOCAL SUCCESS");
          },
        );
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
        final update = await _localRepository
            .writeProjects(apiResult.getRight().toNullable()?.data ?? []);
        update.fold(
          (l) {
            print("UPDATE LOCAL 2 FAILED");
          },
          (r) {
            print("UPDATE LOCAL 2 SUCCESS");
          },
        );
      }
    }
  }
}


