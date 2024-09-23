import 'package:get_it/get_it.dart';
import 'package:mpm/data/entities/project/project_property_entity.dart';
import 'package:mpm/domain/failure_model.dart';
import 'package:mpm/domain/use_case/project_property.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'project_property_provider.g.dart';

@riverpod
Stream<ResultData<ProjectPropertyEntity>> getProjectProperty(
    GetProjectPropertyRef ref, String id) async* {
  final listener = GetIt.I<GetProjectPropertyUseCase>().call(id);
  await for (final event in listener) {
    yield event;
  }
}
