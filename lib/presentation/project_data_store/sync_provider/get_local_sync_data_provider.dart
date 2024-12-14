import 'package:get_it/get_it.dart';
import 'package:mpm/data/entities/project/project_data_entity.dart';
import 'package:mpm/domain/repository/local_handler/locaLhandler_data.dart';
import 'package:mpm/domain/use_case/get_and_sync_local_project_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_local_sync_data_provider.g.dart';

@riverpod
Stream<List<ProjectDataEntity>> getLocalSndSyncData(
    GetLocalSndSyncDataRef ref) async* {
  final listener = GetIt.I<GetAndSyncLocalProjectDataUseCase>().call();
  await for (final event in listener) {
    yield event;
  }
}

@riverpod
Stream<DateTime?> lastSyncUpdate(LastSyncUpdateRef ref) {
  return GetIt.I<LocalHandlerRepository>().lastRunSyncStream();
}

