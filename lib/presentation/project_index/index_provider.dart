import 'package:get_it/get_it.dart';
import 'package:mpm/data/entities/pagination/pagination.dart';
import 'package:mpm/data/entities/project/project_entity.dart';
import 'package:mpm/domain/failure_model.dart';
import 'package:mpm/domain/use_case/projects_index.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'index_provider.g.dart';

@riverpod
Stream<ResultData<PaginationEntity<ProjectEntity>>> projectIndex(
    ProjectIndexRef ref) async* {
  final listener = GetIt.I<ProjectIndexUseCase>().call();
  await for (final event in listener) {
    yield event;
  }
}