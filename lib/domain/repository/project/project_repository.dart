import 'package:mpm/data/data_provider/project/project_interface.dart';
import 'package:mpm/data/entities/pagination/pagination.dart';
import 'package:mpm/data/entities/project/project_data_entity.dart';
import 'package:mpm/data/entities/project/project_entity.dart';
import 'package:mpm/data/entities/project/project_property_entity.dart';
import 'package:mpm/domain/exception_handling.dart';
import 'package:mpm/domain/failure_model.dart';

class ProjectRepository {
  final ProjectDataProvider _dataProvider;

  ProjectRepository({required ProjectDataProvider dataProvider})
      : _dataProvider = dataProvider;

  Future<ResultData<PaginationEntity<ProjectEntity>>> getProjects({int? page}) {
    return _dataProvider.getProjects(page: page).mapToEither();
  }

  Future<ResultData<void>> writeProjects(List<ProjectEntity> projects) {
    return _dataProvider.writeProjects(projects).mapToEither();
  }

  Future<ResultData<void>> writeProjectProperty(
      String id, ProjectPropertyEntity projectProperty) {
    return _dataProvider
        .writeProjectProperty(id, projectProperty)
        .mapToEither();
  }

  Future<ResultData<ProjectPropertyEntity>> getProjectProperty(String id) {
    return _dataProvider.getProjectProperty(id).mapToEither();
  }

  Future<ResultData<PaginationEntity<ProjectDataEntity>>> getProjectData(
      {int? page, required String projectId}) {
    return _dataProvider
        .getProjectData(page: page, projectId: projectId)
        .mapToEither();
  }

  Future<ResultData<void>> writeProjectData(
      List<ProjectDataEntity> projectData, String projectId) {
    return _dataProvider
        .writeProjectsData(projectData, projectId)
        .mapToEither();
  }

  Future<ResultData<void>> storeProjectData(ProjectDataEntity projectData) {
    return _dataProvider.storeProjectData(projectData).mapToEither();
  }

  Future<ResultData<void>> deleteProjectData(String projectDataId) {
    return _dataProvider.deleteProjectData(projectDataId).mapToEither();
  }

  Future<ResultData<void>> updateProjectData(ProjectDataEntity projectData) {
    return _dataProvider.updateProjectData(projectData).mapToEither();
  }

  Stream<List<ProjectDataEntity>> listenToUnSyncProjectData() {
    return _dataProvider.listenToUnSyncProjectData();
  }

  Stream<ProjectDataEntity?> listenToLocalProjectItem(String id) {
    return _dataProvider.listenToLocalProjectItem(id);
  }
}
