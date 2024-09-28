import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:mpm/common/sl_config.dart';
import 'package:mpm/data/data_provider/project/project_api_imp.dart';
import 'package:mpm/data/data_provider/project/project_loca_imp.dart';
import 'package:mpm/data/data_provider/storage/storage_api_imp.dart';
import 'package:mpm/data/network/network_service.dart';
import 'package:mpm/domain/repository/auth/auth_impl.dart';
import 'package:mpm/domain/repository/project/project_repository.dart';
import 'package:mpm/domain/repository/storage.dart';
import 'package:mpm/domain/use_case/get_and_sync_local_project_data.dart';
import 'package:mpm/domain/use_case/upload_image_to_storage.dart';
import 'package:sembast/sembast.dart';
import 'package:uuid/uuid.dart';
import 'package:workmanager/workmanager.dart';

const syncProjectDataTaskID = "mobtakersystem.mpm.syncProjectData";

@pragma(
    'vm:entry-point') // Mandatory if the App is obfuscated or using Flutter 3.1+
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    print("TASK: $task");
    if (task == syncProjectDataTaskID) {
      await syncProjectData();
    }
    return Future.value(true);
  });
}

syncProjectData() async {
  const cacheStorage = FlutterSecureStorage();
  final token = await cacheStorage.read(key: tokenKey);
  final totalRan = await cacheStorage.read(key: "TotalRun") ?? "0";
  await cacheStorage.write(
      key: "TotalRun", value: ((int.tryParse(totalRan) ?? 0) + 1).toString());
  if (token == null) {
    return;
  }
  final db = await getDataBase();
  final networkService = NetworkService(
    baseUrl: 'https://mpm.mobtakersystem.com/api/',
    httpHeaders: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'apiKey': '148d8d21-5e6c-4866-bce6-21b1a65eb831',
    },
  );
  networkService.addAuthToken(token);
  final syncModel = GetAndSyncLocalProjectDataUseCase(
    localRepository: ProjectRepository(
        dataProvider: ProjectLocalDataProvider(
      projectsStore: stringMapStoreFactory.store('projects'),
      projectPropertyStore: stringMapStoreFactory.store('project_property'),
      projectDataStore: stringMapStoreFactory.store('projects_data'),
      db: db,
    )),
    apiRepository: ProjectRepository(
        dataProvider: ProjectApiDataProvider(
      networkService: networkService,
    )),
    uploadImageToStorageUseCase: UploadImageToStorageUseCase(
      StorageRepository(
          storageProvider: StorageApiImpl(networkService: networkService)),
      const Uuid(),
    ),
    internetConnection: InternetConnection(),
  );

  await syncModel.manualSync();
}
