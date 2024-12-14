import 'package:mpm/data/data_provider/local_handler/locaLhandler_data.dart';
import 'package:mpm/domain/exception_handling.dart';
import 'package:mpm/domain/failure_model.dart';

class LocalHandlerRepository {
  final LocalHandlerData _localHandlerData;

  const LocalHandlerRepository(LocalHandlerData localHandlerData)
      : _localHandlerData = localHandlerData;

  Stream<DateTime?> projectIndexLastUpdateStream() {
    return _localHandlerData.getLastUpdateDataSetStream("projectIndex");
  }

  Future<ResultData<DateTime>> projectIndexLastUpdate() {
    return _localHandlerData.getLastUpdateDataSet("projectIndex").mapToEither();
  }

  Future<ResultData<void>> setLastUpdateProjectIndex(DateTime dateTime) {
    return _localHandlerData
        .setLastUpdateDataSet("projectIndex", dateTime)
        .mapToEither();
  }

  ////
  Stream<DateTime?> projectDataLastUpdateStream() {
    return _localHandlerData.getLastUpdateDataSetStream("projectData");
  }

  Future<ResultData<DateTime>> projectDataLastUpdate() {
    return _localHandlerData.getLastUpdateDataSet("projectData").mapToEither();
  }

  Future<ResultData<void>> setLastUpdateProjectData(DateTime dateTime) {
    return _localHandlerData
        .setLastUpdateDataSet("projectData", dateTime)
        .mapToEither();
  }

  ///
  Stream<DateTime?> lastRunSyncStream() {
    return _localHandlerData.getLastUpdateDataSetStream("syncProjects");
  }

  Future<ResultData<DateTime>> lastRunSync() {
    return _localHandlerData.getLastUpdateDataSet("syncProjects").mapToEither();
  }

  Future<ResultData<void>> setLastRunSync(DateTime dateTime) {
    return _localHandlerData
        .setLastUpdateDataSet("syncProjects", dateTime)
        .mapToEither();
  }
}
