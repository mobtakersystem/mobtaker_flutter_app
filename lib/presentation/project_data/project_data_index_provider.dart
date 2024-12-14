import 'package:get_it/get_it.dart';
import 'package:mpm/data/entities/pagination/pagination.dart';
import 'package:mpm/data/entities/project/project_data_entity.dart';
import 'package:mpm/domain/failure_model.dart';
import 'package:mpm/domain/repository/local_handler/locaLhandler_data.dart';
import 'package:mpm/domain/use_case/project_data_index.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'project_data_index_provider.g.dart';

@riverpod
Stream<ResultData<PaginationEntity<ProjectDataEntity>>> projectData(
    ProjectDataRef ref, String projectId) async* {
  final listener = GetIt.I<ProjectDataIndexUseCase>().call(projectId);
  await for (final event in listener) {
    yield event;
  }
}

@riverpod
Stream<DateTime?> projectDataLastUpdate(ProjectDataLastUpdateRef ref) {
  return GetIt.I<LocalHandlerRepository>().projectDataLastUpdateStream();
}

