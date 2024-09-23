import 'package:mpm/data/entities/pagination/pagination.dart';
import 'package:mpm/data/entities/project/project_data_entity.dart';
import 'package:mpm/domain/failure_model.dart';
import 'package:mpm/domain/repository/project/project_repository.dart';

class ProjectDataIndexUseCase {
  final ProjectRepository _apiRepository;
  final ProjectRepository _localRepository;

  ProjectDataIndexUseCase(
      {required ProjectRepository apiRepository,
      required ProjectRepository localRepository})
      : _apiRepository = apiRepository,
        _localRepository = localRepository;

  Stream<ResultData<PaginationEntity<ProjectDataEntity>>> call(
      String projectId) async* {
    final localResult =
        await _localRepository.getProjectData(projectId: projectId);
    if (localResult.isRight()) {
      print("GET LOCAL");
      yield localResult;
      final apiResult =
          await _apiRepository.getProjectData(projectId: projectId);
      print("GET API");
      if (apiResult.isRight()) {
        print("GET API SUCCESS");
        final List<ProjectDataEntity> apiList =
            (apiResult.getRight().toNullable()?.data ?? []);
        final List<ProjectDataEntity> localList =
            (localResult.getRight().toNullable()?.data ?? [])
                .where(
                  (element) => element.isLocalRecord(),
                )
                .toList();
        final combinedList =
            <ProjectDataEntity>[...localList, ...apiList].toList()
              ..sort(
                (a, b) => a.date != null && b.date != null
                    ? b.date!.compareTo(a.date!)
                    : 1,
              );
        yield ResultData.right(
            apiResult.getRight().toNullable()!.copyWith(data: combinedList));
        final update = await _localRepository.writeProjectData(
            apiResult.getRight().toNullable()?.data ?? [], projectId);
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
      final apiResult =
          await _apiRepository.getProjectData(projectId: projectId);
      print("GET API 2 SUCCESS");
      if (apiResult.isLeft() &&
          localResult.isLeft() &&
          localResult.getLeft().toNullable() is NotFoundFailure) {
        yield ResultData.right(
          const PaginationEntity<ProjectDataEntity>(
              total: 0, perPage: 0, lastPage: 1, currentPage: 1, data: []),
        );
      } else {
        yield apiResult;
      }
      if (apiResult.isRight()) {
        final update = await _localRepository.writeProjectData(
            apiResult.getRight().toNullable()?.data ?? [], projectId);
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
