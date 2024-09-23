import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mpm/data/entities/indicator/indicator.dart';
import 'package:mpm/data/entities/machinery/machinery_entity.dart';
import 'package:mpm/data/entities/machinery/machinery_part_entity.dart';
import 'package:mpm/data/entities/supervisor/supervisor_entity.dart';
import 'package:mpm/data/entities/worker/worker_entity.dart';

part 'project_property_entity.freezed.dart';
part 'project_property_entity.g.dart';

@freezed
class ProjectPropertyEntity with _$ProjectPropertyEntity {
  @JsonSerializable(explicitToJson: true)
  const factory ProjectPropertyEntity({
    @Default([]) List<WorkerEntity> workers,
    @Default([]) List<MachineryEntity> machineries,
    @Default({}) Map<String,String> machineryServiceTypes,
    @Default([]) List<MachineryPartEntity> machineryParts,
    @Default([]) List<WorkerEntity> diggers,
    @Default([]) List<WorkerEntity> headDiggers,
    @Default([]) List<SupervisorEntity> supervisors,
    @Default([]) List<IndicatorEntity> indicators,
    @Default({}) Map<String,String> stopReasons,

}) = _ProjectPropertyEntity;

  factory ProjectPropertyEntity.fromJson(Map<String, dynamic> json) =>
      _$ProjectPropertyEntityFromJson(json);
}