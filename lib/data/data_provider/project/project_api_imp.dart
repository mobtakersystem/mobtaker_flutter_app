import 'package:dio/dio.dart';
import 'package:mpm/data/data_provider/project/project_interface.dart';
import 'package:mpm/data/entities/pagination/pagination.dart';
import 'package:mpm/data/entities/project/project_data_entity.dart';
import 'package:mpm/data/entities/project/project_entity.dart';
import 'package:mpm/data/entities/project/project_property_entity.dart';
import 'package:mpm/data/network/network_request.dart';
import 'package:mpm/data/network/network_service.dart';
import 'package:mpm/data/network/request_body.dart';

class ProjectApiDataProvider implements ProjectDataProvider {
  final NetworkService _networkService;

  ProjectApiDataProvider({required NetworkService networkService})
      : _networkService = networkService;

  @override
  Future<PaginationEntity<ProjectEntity>> getProjects({int? page}) {
    return _networkService.execute(
      NetworkRequest(
        type: NetworkRequestType.get,
        path: 'projects/drilling/index${page != null ? '?page=$page' : ''}',
        data: const NetworkRequestBody.empty(),
      ),
      parser: (jsonParam) {
        return PaginationEntity<ProjectEntity>.fromJson(
          jsonParam!['projects'],
          (p0) => ProjectEntity.fromJson(Map<String, dynamic>.from(p0 as Map)),
        );
      },
    );
  }

  @override
  Future<void> writeProjects(List<ProjectEntity> projects) {
    throw UnimplementedError();
  }

  @override
  Future<ProjectPropertyEntity> getProjectProperty(String id) {
    return _networkService.execute(
      NetworkRequest(
        type: NetworkRequestType.post,
        path: 'projects/drilling/data/create',
        data: NetworkRequestBody.json({
          'project_id': id,
        }),
      ),
      parser: (jsonParam) {
        return ProjectPropertyEntity.fromJson(jsonParam!);
      },
    );
  }

  @override
  Future<void> writeProjectProperty(
      String id, ProjectPropertyEntity projectData) {
    throw UnimplementedError();
  }

  @override
  Future<PaginationEntity<ProjectDataEntity>> getProjectData(
      {int? page, required String projectId}) {
    return _networkService.execute(
      NetworkRequest(
        type: NetworkRequestType.post,
        path: 'projects/drilling/data/index',
        data: NetworkRequestBody.json({
          'project_id': projectId,
          if (page != null) 'page': page,
        }),
      ),
      parser: (jsonParam) {
        return PaginationEntity<ProjectDataEntity>.fromJson(
          jsonParam!['projectData'],
          (p0) {
            return ProjectDataEntity.fromJson(
              Map<String, dynamic>.from(p0 as Map),
            );
          },
        );
      },
    );
  }

  @override
  Future<void> writeProjectsData(
      List<ProjectDataEntity> projectData, String projectId) {
    throw UnimplementedError();
  }

  @override
  Future<void> storeProjectData(
    ProjectDataEntity projectData,
  ) {
    return _networkService.execute(
      NetworkRequest(
        type: NetworkRequestType.post,
        path: 'projects/drilling/data/store/meter-indicator',
        data: NetworkRequestBody.formData(FormData.fromMap(
          {
            'project_id': projectData.projectId,
            'date': projectData.date?.toString().split(" ").firstOrNull,
            'head_digger_id': projectData.headDiggerId,
            'machinery_id': projectData.machineryId,
            'supervisor_id': projectData.supervisorId,
            'shift': projectData.shift,
            'digger_id': projectData.diggerId,
            'workers': projectData.workers
                .map(
                  (e) => e.id,
                )
                .toList(),
            'initial_meter': projectData.initialMeter,
            'final_meter': projectData.finalMeter,
            "machinery_working_hour": projectData.machineryWorkingHour,
            'indicator_id': projectData.indicatorId,
            if (projectData.localMachineryWorkingHourImage != null)
              'machinery_working_hour_image':
                  projectData.localMachineryWorkingHourImage!.preSignedName,
            if (projectData.images.isNotEmpty)
              'images': projectData.images
                  .map((e) => {
                        "id": e.preSignedName!.split(".").first,
                        "mime_type": e.preSignedName!.split(".").last,
                      })
                  .toList(),
            'hasMachineryServices':
                (projectData.hasMachineryServices ?? false) ? 1 : 0,
            if (projectData.hasMachineryServices!)
              'machineryServices': projectData.machineryServices.map((e) {
                final json = <String, dynamic>{
                  "type": e.serviceType,
                  "description": e.description,
                };
                if (e.images.isNotEmpty) {
                  json['image_id'] =
                      e.images.first.preSignedName?.split(".").first;
                  json['mime_type'] =
                      e.images.first.preSignedName?.split(".").last;
                }
                return json;
              }).toList(),
            'hasMachineryPartConsumes':
                (projectData.hasMachineryPartConsumes ?? false) ? 1 : 0,
            if (projectData.hasMachineryPartConsumes!)
              'machineryPartConsumes':
                  projectData.machineryPartConsumes.map((e) {
                final json = {
                  "part_id": e.partId,
                  "description": e.description,
                };
                if (e.images.isNotEmpty) {
                  json['image_id'] =
                      e.images.first.preSignedName?.split(".").first;
                  json['mime_type'] =
                      e.images.first.preSignedName?.split(".").last;
                }
                return json;
              }).toList(),
            "stops": projectData.stops
                .map((e) => {
                      "reason": e.reason,
                      "start": e.start,
                      "end": e.end,
                      "description": e.description
                    })
                .toList(),
            if ((projectData.hasStop ?? false) &&
                projectData.stopsImage != null)
              "stopsImage": projectData.stopsImage?.preSignedName
          },
          ListFormat.multiCompatible,
        )),
      ),
      parser: (jsonParam) {
        return;
      },
    );
  }

  @override
  Future<void> deleteProjectData(String projectDataId) {
    // TODO: implement deleteProjectData
    throw UnimplementedError();
  }

  @override
  Stream<DataSyncStatus> projectSyncStatus(String projectDataId) async* {
    if (projectDataId.startsWith("LOCAL_")) {
      yield DataSyncStatus.pending;
    }
    yield DataSyncStatus.synced;
  }

  @override
  Stream<List<ProjectDataEntity>> listenToLocalProjectData() async* {
    throw UnimplementedError();
  }

  @override
  Future<void> updateProjectData(ProjectDataEntity newData) {
    // TODO: implement updateProjectData
    throw UnimplementedError();
  }

  @override
  Stream<ProjectDataEntity> listenToLocalProjectItem(String id) {
    // TODO: implement listenToLocalProjectItem
    throw UnimplementedError();
  }
}
