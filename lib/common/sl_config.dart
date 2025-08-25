import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:mpm/data/data_provider/auth/auth_impl.dart';
import 'package:mpm/data/data_provider/auth/auth_interface.dart';
import 'package:mpm/data/data_provider/dashboard/dashboard_impl.dart';
import 'package:mpm/data/data_provider/dashboard/dashboard_interface.dart';
import 'package:mpm/data/data_provider/local_handler/locaLhandler_data.dart';
import 'package:mpm/data/data_provider/project/project_api_imp.dart';
import 'package:mpm/data/data_provider/project/project_interface.dart';
import 'package:mpm/data/data_provider/project/project_loca_imp.dart';
import 'package:mpm/data/data_provider/storage/storage_api_imp.dart';
import 'package:mpm/data/data_provider/storage/storage_interface.dart';
import 'package:mpm/data/network/network_service.dart';
import 'package:mpm/domain/repository/auth/auth_impl.dart';
import 'package:mpm/domain/repository/auth/auth_interface.dart';
import 'package:mpm/domain/repository/dashboard/dashboard_repository.dart';
import 'package:mpm/domain/repository/local_handler/locaLhandler_data.dart';
import 'package:mpm/domain/repository/project/project_repository.dart';
import 'package:mpm/domain/repository/storage.dart';
import 'package:mpm/domain/use_case/dashboard_use_case.dart';
import 'package:mpm/domain/use_case/delete_project_data.dart';
import 'package:mpm/domain/use_case/get_and_sync_local_project_data.dart';
import 'package:mpm/domain/use_case/get_storage_image_link.dart';
import 'package:mpm/domain/use_case/image_picker_usecase.dart';
import 'package:mpm/domain/use_case/project_data_index.dart';
import 'package:mpm/domain/use_case/project_property.dart';
import 'package:mpm/domain/use_case/project_store.dart';
import 'package:mpm/domain/use_case/project_update.dart';
import 'package:mpm/domain/use_case/projects_index.dart';
import 'package:mpm/domain/use_case/upload_image_to_storage.dart';
import 'package:mpm/flavors.dart';
import 'package:mpm/routes/app_router.dart';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'package:uuid/uuid.dart';

typedef DB = Database;
typedef LocalID = String;

slConfig(GetIt getIt) async {
  getIt.registerSingleton<AppRouter>(AppRouter());
  await databaseConfig(getIt);
  getIt.registerLazySingleton<NetworkService>(
    () => NetworkService(
      baseUrl: F.baseUrl,
      httpHeaders: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'apiKey': F.apiKey,
      },
    ),
  );
  getIt.registerFactory<InputDecoration>(
    () => const InputDecoration(
      border: InputBorder.none,
      enabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      contentPadding: EdgeInsets.zero,
    ),
    instanceName: 'noBorder',
  );
  getIt.registerFactoryParam<SizedBox, double?, void>(
    (size, _) => SizedBox.square(
      dimension: size ?? 16,
    ),
  );
  getIt.registerLazySingleton<Uuid>(
    () => const Uuid(),
  );
  getIt.registerFactory<LocalID>(
    () => "LOCAL_${getIt<Uuid>().v4()}",
  );
  //Aut data
  getIt.registerLazySingleton<FlutterSecureStorage>(
    () => const FlutterSecureStorage(),
  );
  await _themeModeConfig(getIt);
  getIt.registerLazySingleton<AuthDataProvider>(
    () => AuthDataProviderImpl(
      networkService: getIt(),
    ),
  );
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      dataProvider: getIt(),
      secureStorage: getIt(),
      rsaPublicKey: F.rsaPublicKey,
      isBackgroundServiceActive: F.isBackgroundServiceEnabled,
    ),
  );
  getIt.registerLazySingleton<DeleteProjectDataUseCase>(
    () => DeleteProjectDataUseCase(
      apiRepository: getIt(instanceName: ProviderType.api.name),
      localRepository: getIt(instanceName: ProviderType.local.name),
    ),
  );
  //
  _localHandler(getIt);
  _projectSl(getIt);
  _storageSl(getIt);
  _filePickerSl(getIt);
  _dashboardSl(getIt);
}

_filePickerSl(GetIt getIt) {
  getIt.registerLazySingleton<SingleImagePickerUseCase>(
    () => SingleImagePickerUseCase(
      ImagePicker(),
    ),
  );
  getIt.registerLazySingleton<MultiImagePickerUseCase>(
    () => MultiImagePickerUseCase(
      ImagePicker(),
    ),
  );
}

_storageSl(GetIt getIt) {
  //storage data provider
  getIt.registerLazySingleton<StorageDataProvider>(
    () => StorageApiImpl(
      networkService: getIt(),
    ),
  );
  getIt.registerLazySingleton<StorageRepository>(
    () => StorageRepository(
      storageProvider: getIt(),
    ),
  );
  getIt.registerLazySingleton<UploadImageToStorageUseCase>(
    () => UploadImageToStorageUseCase(
      getIt(),
      getIt(),
    ),
  );
  getIt.registerLazySingleton<GetStorageImageLinkUseCase>(
    () => getIt<StorageRepository>().downloadLink,
  );
}

_projectSl(GetIt getIt) {
  //project data provider
  getIt.registerLazySingleton<ProjectDataProvider>(
      () => ProjectApiDataProvider(
            networkService: getIt(),
          ),
      instanceName: ProviderType.api.name);
  getIt.registerLazySingleton<ProjectDataProvider>(
      () => ProjectLocalDataProvider(
            projectsStore: stringMapStoreFactory.store('projects'),
            projectPropertyStore:
                stringMapStoreFactory.store('project_property'),
            projectDataStore: stringMapStoreFactory.store('projects_data'),
            db: getIt(),
          ),
      instanceName: ProviderType.local.name);

  getIt.registerLazySingleton<ProjectRepository>(
      () => ProjectRepository(
            dataProvider: getIt(instanceName: ProviderType.api.name),
          ),
      instanceName: ProviderType.api.name);

  getIt.registerLazySingleton<ProjectRepository>(
      () => ProjectRepository(
            dataProvider: getIt(instanceName: ProviderType.local.name),
          ),
      instanceName: ProviderType.local.name);
  //use case
  getIt.registerLazySingleton<ProjectIndexUseCase>(() {
    return ProjectIndexUseCase(
      apiRepository: getIt(instanceName: ProviderType.api.name),
      localRepository: getIt(instanceName: ProviderType.local.name),
    );
  });
  getIt.registerLazySingleton<GetProjectPropertyUseCase>(() {
    return GetProjectPropertyUseCase(
      apiRepository: getIt(instanceName: ProviderType.api.name),
      localRepository: getIt(instanceName: ProviderType.local.name),
    );
  });

  getIt.registerLazySingleton<ProjectDataIndexUseCase>(() {
    return ProjectDataIndexUseCase(
      apiRepository: getIt(instanceName: ProviderType.api.name),
      localRepository: getIt(instanceName: ProviderType.local.name),
    );
  });

  getIt.registerLazySingleton<StoreProjectDataInLocalUseCase>(() {
    return StoreProjectDataInLocalUseCase(
      localRepository: getIt(instanceName: ProviderType.local.name),
    );
  });
  getIt.registerLazySingleton<StoreProjectDataInServerUseCase>(() {
    return StoreProjectDataInServerUseCase(
      apiRepository: getIt(instanceName: ProviderType.api.name),
    );
  });
  getIt.registerLazySingleton<GetAndSyncLocalProjectDataUseCase>(
    () {
      return GetAndSyncLocalProjectDataUseCase(
        localRepository: getIt(instanceName: ProviderType.local.name),
        apiRepository: getIt(instanceName: ProviderType.api.name),
        uploadImageToStorageUseCase: getIt(),
        internetConnection: InternetConnection(),
        localHandlerRepository: getIt(),
      );
    },
    dispose: (param) {
      param.internetListener?.cancel();
    },
  );
  getIt.registerLazySingleton<SetTryAgainSyncItemUseCase>(() {
    return SetTryAgainSyncItemUseCase(
      localRepository: getIt(instanceName: ProviderType.local.name),
    );
  });

  getIt.registerLazySingleton<UpdateProjectDataInServerUseCase>(
    () {
      return UpdateProjectDataInServerUseCase(
        apiRepository: getIt(instanceName: ProviderType.api.name),
      );
    },
  );

  getIt.registerLazySingleton<UpdateProjectDataInLocalUseCase>(
    () {
      return UpdateProjectDataInLocalUseCase(
        localRepository: getIt(instanceName: ProviderType.local.name),
      );
    },
  );
}

_dashboardSl(GetIt getIt) {
  getIt.registerLazySingleton<DashboardDataProvider>(
    () => DashboardApiDataProvider(
      networkService: getIt(),
    ),
  );
  getIt.registerLazySingleton<DashboardRepository>(
    () => DashboardRepository(
      dashboardDataProvider: getIt(),
    ),
  );
  getIt.registerLazySingleton<ProductionDataDashboardChartUseCase>(
    () => getIt<DashboardRepository>().productionData,
  );
  getIt.registerLazySingleton<SaleDataDashboardChartUseCase>(
    () => getIt<DashboardRepository>().saleData,
  );
  getIt.registerLazySingleton<InventoryDataDashboardChartUseCase>(
    () => getIt<DashboardRepository>().inventoryData,
  );
  getIt.registerLazySingleton<UtilityDataDashboardChartUseCase>(
    () => getIt<DashboardRepository>().utilityData,
  );
  getIt.registerLazySingleton<ProductStopsDashboardChartUseCase>(
    () => getIt<DashboardRepository>().productStops,
  );
}

Future<void> databaseConfig(GetIt getIt) async {
  final db = await getDataBase();
// store the database reference in the global variable
  getIt.registerSingleton<DB>(db);
}

Future<DB> getDataBase() async {
  final dir = await getApplicationDocumentsDirectory();
// make sure it exists
  await dir.create(recursive: true);
// build the database path
  final dbPath = join(dir.path, 'mpm_database.db');
// open the database
  final db = await databaseFactoryIo.openDatabase(dbPath);
  return db;
}

_localHandler(GetIt getIt) {
  getIt.registerLazySingleton<LocalHandlerData>(() => LocalHandlerData(
      dataSetUpdateLog: stringMapStoreFactory.store('time_logs'),
      db: getIt.get()));
  getIt.registerLazySingleton<LocalHandlerRepository>(
    () => LocalHandlerRepository(
      getIt<LocalHandlerData>(),
    ),
  );
}

//theme mode config
_themeModeConfig(GetIt getIt) async {
  final savedThemeMode =
      await getIt.get<FlutterSecureStorage>().read(key: "theme_mode");

  getIt.registerSingleton<ThemeMode>(savedThemeMode == null
      ? ThemeMode.system
      : ThemeMode.values.firstWhere(
          (element) => element.name == savedThemeMode,
          orElse: () => ThemeMode.system,
        ));
}

enum ProviderType {
  local,
  api,
}
