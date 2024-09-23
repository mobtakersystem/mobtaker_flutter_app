import 'dart:async';

import 'package:mpm/common/sl_config.dart';
import 'package:mpm/data/data_provider/project/project_interface.dart';
import 'package:mpm/data/entities/pagination/pagination.dart';
import 'package:mpm/data/entities/project/project_data_entity.dart';
import 'package:mpm/data/entities/project/project_entity.dart';
import 'package:mpm/data/entities/project/project_property_entity.dart';
import 'package:mpm/data/network/custom_exception.dart';
import 'package:sembast/sembast.dart';

class ProjectLocalDataProvider implements ProjectDataProvider {
  final StoreRef<String, Map<String, Object?>> _projectsStore;
  final StoreRef<String, Map<String, Object?>> _projectPropertyStore;
  final StoreRef<String, Map<String, Object?>> _projectDataStore;
  final DB _db;

  ProjectLocalDataProvider(
      {required StoreRef<String, Map<String, Object?>> projectsStore,
      required DB db,
      required StoreRef<String, Map<String, Object?>> projectPropertyStore,
      required StoreRef<String, Map<String, Object?>> projectDataStore})
      : _projectsStore = projectsStore,
        _projectPropertyStore = projectPropertyStore,
        _projectDataStore = projectDataStore,
        _db = db;

  @override
  Future<PaginationEntity<ProjectEntity>> getProjects({int? page}) async {
    final records = await _projectsStore.query().getSnapshots(_db);
    final result = records.map(
      (e) {
        final value = ProjectEntity.fromJson(e.value);
        return value;
      },
    ).toList();
    return PaginationEntity(
      data: result,
      currentPage: 1,
      lastPage: 1,
      perPage: result.length,
      total: result.length,
    );
  }

  @override
  Future<void> writeProjects(List<ProjectEntity> projects) async {
    await _db.transaction((txn) async {
      Finder filter = Finder(
        filter: Filter.not(
          Filter.inList(
            'id',
            projects
                .map(
                  (e) => e.id,
                )
                .toList(),
          ),
        ),
      );
      final removedItems =
          await _projectsStore.query(finder: filter).getSnapshots(txn);
      for (var element in removedItems) {
        _projectsStore.record(element.key).delete(txn);
      }
      for (var item in projects) {
        await _projectsStore.record(item.id).put(
              txn,
              item.toJson(),
            );
      }
    });
  }

  @override
  Future<ProjectPropertyEntity> getProjectProperty(String id) async {
    final record = await _projectPropertyStore.record(id).get(_db);
    if (record == null) {
      throw NotFoundException(errorMessage: 'داده پروژه یافت نشد');
    } else {
      return ProjectPropertyEntity.fromJson(record);
    }
  }

  @override
  Future<void> writeProjectProperty(
      String id, ProjectPropertyEntity projectProperty) async {
    await _projectPropertyStore.record(id).put(_db, projectProperty.toJson());
  }

  @override
  Future<PaginationEntity<ProjectDataEntity>> getProjectData(
      {int? page, required String projectId}) async {
    final filter = Finder(
      filter: Filter.and([
        Filter.equals('project_id', projectId),
        Filter.notEquals('syncStatus', DataSyncStatus.synced.name),
      ]),
      sortOrders: [SortOrder('date', false)],
    );
    final record =
        await _projectDataStore.query(finder: filter).getSnapshots(_db);
    if (record.isEmpty) {
      throw NotFoundException(errorMessage: 'داده پروژه یافت نشد');
    } else {
      final list = record.map((e) {
        return ProjectDataEntity.fromJson(e.value);
      }).toList();
      return PaginationEntity(
        data: list,
        currentPage: 1,
        lastPage: 1,
        perPage: list.length,
        total: list.length,
      );
    }
  }

  @override
  Future<void> writeProjectsData(
      List<ProjectDataEntity> projectData, String projectId) async {
    await _db.transaction((txn) async {
      Finder filter = Finder(
        filter: Filter.and([
          Filter.not(
            Filter.inList(
              'id',
              projectData
                  .map(
                    (e) => e.id,
                  )
                  .toList(),
            ),
          ),
          Filter.equals('project_id', projectId),
          Filter.not(
            Filter.matches('id', '^LOCAL_'),
          )
        ]),
      );
      final removedItems =
          await _projectDataStore.query(finder: filter).getSnapshots(txn);
      for (var element in removedItems) {
        if (!element.key.startsWith("LOCAL_")) {
          _projectDataStore.record(element.key).delete(txn);
        }
      }
      for (var item in projectData) {
        await _projectDataStore.record(item.id).put(
              txn,
              item.toJson(),
            );
      }
    });
  }

  @override
  Future<void> storeProjectData(ProjectDataEntity projectData) async {
    print("STORE");
    print(projectData.id);
    final result = await _projectDataStore.record(projectData.id).put(
          _db,
          projectData
              .copyWith(
                syncStatus: projectData.isLocalRecord()
                    ? DataSyncStatus.pending
                    : DataSyncStatus.none,
              )
              .toJson(),
        );
    print(result['id']);
    return;
  }

  @override
  Future<void> deleteProjectData(String projectDataId) async {
    final result = await _projectDataStore.record(projectDataId).delete(_db);
    if (result == null) {
      throw LocalDbException(errorMessage: 'خطا در حذف داده محلی');
    }
  }

  @override
  Stream<DataSyncStatus> projectSyncStatus(String projectDataId) {
    return _projectDataStore
        .record(projectDataId)
        .onSnapshot(_db)
        .asyncMap((event) {
      return (event?.value['syncStatus'] as DataSyncStatus?) ??
          DataSyncStatus.none;
    });
  }

  @override
  Stream<List<ProjectDataEntity>> listenToLocalProjectData() {
    final filter = Finder(
      filter: Filter.matches('id', '^LOCAL_'),
    );
    return _projectDataStore
        .query(finder: filter)
        .onSnapshots(_db)
        .asyncMap((event) {
      return event.map((e) {
        return ProjectDataEntity.fromJson(e.value);
      }).toList();
    });
  }

  @override
  Future<void> updateProjectData(ProjectDataEntity newData) async {
    final result = await _projectDataStore
        .record(newData.id)
        .update(_db, newData.toJson());
    if (result == null) {
      throw LocalDbException(errorMessage: 'خطا در بروزرسانی داده محلی');
    }
    return;
  }
}
