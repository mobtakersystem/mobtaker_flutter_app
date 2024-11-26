import 'package:mpm/data/entities/pagination/pagination.dart';
import 'package:mpm/data/entities/project/project_data_entity.dart';
import 'package:mpm/data/entities/project/project_entity.dart';
import 'package:mpm/data/entities/project/project_property_entity.dart';

abstract class ProjectDataProvider {
  Future<PaginationEntity<ProjectEntity>> getProjects({
    int? page,
  });

  Future<void> writeProjects(List<ProjectEntity> projects);

  Future<ProjectPropertyEntity> getProjectProperty(String id);

  Future<void> writeProjectProperty(
      String id, ProjectPropertyEntity projectData);

  Future<PaginationEntity<ProjectDataEntity>> getProjectData({
    int? page,
    required String projectId,
  });

  Future<void> writeProjectsData(
      List<ProjectDataEntity> projectData, String projectId);

  Future<void> storeProjectData(ProjectDataEntity projectData);

  Future<void> deleteProjectData(String projectDataId);

  Future<void> updateProjectData(ProjectDataEntity newData);

  Stream<DataSyncStatus> projectSyncStatus(String projectDataId);

  Stream<List<ProjectDataEntity>> listenToLocalProjectData();

  Stream<ProjectDataEntity?> listenToLocalProjectItem(String id);
}
