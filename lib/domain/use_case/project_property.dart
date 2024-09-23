import 'package:mpm/data/entities/project/project_property_entity.dart';
import 'package:mpm/domain/failure_model.dart';
import 'package:mpm/domain/repository/project/project_repository.dart';

class GetProjectPropertyUseCase {
  final ProjectRepository _apiRepository;
  final ProjectRepository _localRepository;

  GetProjectPropertyUseCase(
      {required ProjectRepository apiRepository,
      required ProjectRepository localRepository})
      : _apiRepository = apiRepository,
        _localRepository = localRepository;

  Stream<ResultData<ProjectPropertyEntity>> call(String id) async* {
    final localResult = await _localRepository.getProjectProperty(id);
    if (localResult.isRight()) {
      print("GET LOCAL");
      yield localResult;
      final apiResult = await _apiRepository.getProjectProperty(id);
      print("GET API");
      if (apiResult.isRight()) {
        print("GET API SUCCESS");
        yield apiResult;
        final update = await _localRepository.writeProjectProperty(
            id, apiResult.getRight().toNullable()!);
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
      final apiResult = await _apiRepository.getProjectProperty(id);
      print("GET API 2 SUCCESS");
      yield apiResult;
      if (apiResult.isRight()) {
        final update = await _localRepository.writeProjectProperty(
            id, apiResult.getRight().toNullable()!);
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
