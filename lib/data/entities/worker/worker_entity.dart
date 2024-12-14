import 'package:freezed_annotation/freezed_annotation.dart';

part 'worker_entity.g.dart';

part 'worker_entity.freezed.dart';

@freezed
class WorkerEntity with _$WorkerEntity {
  const factory WorkerEntity({
    required String id,
    @JsonKey(name: 'first_name') @Default("") String firstName,
    @JsonKey(name: 'last_name') @Default("") String lastName,
    @JsonKey(name: 'full_name') @Default("") String fullName,
  }) = _WorkerEntity;

  factory WorkerEntity.fromJson(Map<String, dynamic> json) =>
      _$WorkerEntityFromJson(json);
}
@freezed
class ProjectWorkerEntity with _$ProjectWorkerEntity {
  const factory ProjectWorkerEntity({
    required String id,
    @JsonKey(name: 'name') @Default("") String name,
  }) = _ProjectWorkerEntity;

  factory ProjectWorkerEntity.fromJson(Map<String, dynamic> json) =>
      _$ProjectWorkerEntityFromJson(json);
}