// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:collection/collection.dart' as _i17;
import 'package:flutter/material.dart' as _i15;
import 'package:mpm/data/entities/document/document_entity.dart' as _i16;
import 'package:mpm/data/entities/project/project_data_entity.dart' as _i18;
import 'package:mpm/presentation/auth/cellphone_login_page.dart' as _i1;
import 'package:mpm/presentation/auth/check_otp_page.dart' as _i2;
import 'package:mpm/presentation/auth/login_page.dart' as _i7;
import 'package:mpm/presentation/home_page.dart' as _i4;
import 'package:mpm/presentation/project_analytics_data/dashboard_page.dart'
    as _i3;
import 'package:mpm/presentation/project_data/only_local_project_data_page.dart'
    as _i6;
import 'package:mpm/presentation/project_data/project_data_page.dart' as _i9;
import 'package:mpm/presentation/project_data_show/images_viewer_page.dart'
    as _i5;
import 'package:mpm/presentation/project_data_show/project_data_show_page.dart'
    as _i10;
import 'package:mpm/presentation/project_data_store/project_data_edit_page.dart'
    as _i8;
import 'package:mpm/presentation/project_data_store/project_data_store_page.dart'
    as _i11;
import 'package:mpm/presentation/project_index/index_page.dart' as _i12;
import 'package:mpm/presentation/splash_page.dart' as _i13;

/// generated route for
/// [_i1.CellphoneLoginPage]
class CellphoneLoginRoute extends _i14.PageRouteInfo<CellphoneLoginRouteArgs> {
  CellphoneLoginRoute({_i15.Key? key, List<_i14.PageRouteInfo>? children})
      : super(
          CellphoneLoginRoute.name,
          args: CellphoneLoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CellphoneLoginRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CellphoneLoginRouteArgs>(
        orElse: () => const CellphoneLoginRouteArgs(),
      );
      return _i1.CellphoneLoginPage(key: args.key);
    },
  );
}

class CellphoneLoginRouteArgs {
  const CellphoneLoginRouteArgs({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return 'CellphoneLoginRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CellphoneLoginRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i2.CheckOtpPage]
class CheckOtpRoute extends _i14.PageRouteInfo<CheckOtpRouteArgs> {
  CheckOtpRoute({_i15.Key? key, List<_i14.PageRouteInfo>? children})
      : super(
          CheckOtpRoute.name,
          args: CheckOtpRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CheckOtpRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CheckOtpRouteArgs>(
        orElse: () => const CheckOtpRouteArgs(),
      );
      return _i2.CheckOtpPage(key: args.key);
    },
  );
}

class CheckOtpRouteArgs {
  const CheckOtpRouteArgs({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return 'CheckOtpRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CheckOtpRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i3.DashboardPage]
class DashboardRoute extends _i14.PageRouteInfo<void> {
  const DashboardRoute({List<_i14.PageRouteInfo>? children})
      : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i3.DashboardPage();
    },
  );
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i14.PageRouteInfo<void> {
  const HomeRoute({List<_i14.PageRouteInfo>? children})
      : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomePage();
    },
  );
}

/// generated route for
/// [_i5.ImagesViewerPage]
class ImagesViewerRoute extends _i14.PageRouteInfo<ImagesViewerRouteArgs> {
  ImagesViewerRoute({
    _i15.Key? key,
    List<String>? imagesPath,
    List<_i16.DocumentEntity>? imagesDocs,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ImagesViewerRoute.name,
          args: ImagesViewerRouteArgs(
            key: key,
            imagesPath: imagesPath,
            imagesDocs: imagesDocs,
          ),
          initialChildren: children,
        );

  static const String name = 'ImagesViewerRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ImagesViewerRouteArgs>(
        orElse: () => const ImagesViewerRouteArgs(),
      );
      return _i5.ImagesViewerPage(
        key: args.key,
        imagesPath: args.imagesPath,
        imagesDocs: args.imagesDocs,
      );
    },
  );
}

class ImagesViewerRouteArgs {
  const ImagesViewerRouteArgs({this.key, this.imagesPath, this.imagesDocs});

  final _i15.Key? key;

  final List<String>? imagesPath;

  final List<_i16.DocumentEntity>? imagesDocs;

  @override
  String toString() {
    return 'ImagesViewerRouteArgs{key: $key, imagesPath: $imagesPath, imagesDocs: $imagesDocs}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ImagesViewerRouteArgs) return false;
    return key == other.key &&
        const _i17.ListEquality().equals(imagesPath, other.imagesPath) &&
        const _i17.ListEquality().equals(imagesDocs, other.imagesDocs);
  }

  @override
  int get hashCode =>
      key.hashCode ^
      const _i17.ListEquality().hash(imagesPath) ^
      const _i17.ListEquality().hash(imagesDocs);
}

/// generated route for
/// [_i6.LocalsProjectDataPage]
class LocalsProjectDataRoute extends _i14.PageRouteInfo<void> {
  const LocalsProjectDataRoute({List<_i14.PageRouteInfo>? children})
      : super(LocalsProjectDataRoute.name, initialChildren: children);

  static const String name = 'LocalsProjectDataRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i6.LocalsProjectDataPage();
    },
  );
}

/// generated route for
/// [_i7.LoginPage]
class LoginRoute extends _i14.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i15.Key? key, List<_i14.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginRouteArgs>(
        orElse: () => const LoginRouteArgs(),
      );
      return _i7.LoginPage(key: args.key);
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! LoginRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i8.ProjectDataEditPage]
class ProjectDataEditRoute
    extends _i14.PageRouteInfo<ProjectDataEditRouteArgs> {
  ProjectDataEditRoute({
    _i15.Key? key,
    required String projectId,
    required _i18.ProjectDataEntity projectDataEntity,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ProjectDataEditRoute.name,
          args: ProjectDataEditRouteArgs(
            key: key,
            projectId: projectId,
            projectDataEntity: projectDataEntity,
          ),
          initialChildren: children,
        );

  static const String name = 'ProjectDataEditRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProjectDataEditRouteArgs>();
      return _i8.ProjectDataEditPage(
        key: args.key,
        projectId: args.projectId,
        projectDataEntity: args.projectDataEntity,
      );
    },
  );
}

class ProjectDataEditRouteArgs {
  const ProjectDataEditRouteArgs({
    this.key,
    required this.projectId,
    required this.projectDataEntity,
  });

  final _i15.Key? key;

  final String projectId;

  final _i18.ProjectDataEntity projectDataEntity;

  @override
  String toString() {
    return 'ProjectDataEditRouteArgs{key: $key, projectId: $projectId, projectDataEntity: $projectDataEntity}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProjectDataEditRouteArgs) return false;
    return key == other.key &&
        projectId == other.projectId &&
        projectDataEntity == other.projectDataEntity;
  }

  @override
  int get hashCode =>
      key.hashCode ^ projectId.hashCode ^ projectDataEntity.hashCode;
}

/// generated route for
/// [_i9.ProjectDataPage]
class ProjectDataRoute extends _i14.PageRouteInfo<ProjectDataRouteArgs> {
  ProjectDataRoute({
    _i15.Key? key,
    required String projectID,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ProjectDataRoute.name,
          args: ProjectDataRouteArgs(key: key, projectID: projectID),
          initialChildren: children,
        );

  static const String name = 'ProjectDataRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProjectDataRouteArgs>();
      return _i9.ProjectDataPage(key: args.key, projectID: args.projectID);
    },
  );
}

class ProjectDataRouteArgs {
  const ProjectDataRouteArgs({this.key, required this.projectID});

  final _i15.Key? key;

  final String projectID;

  @override
  String toString() {
    return 'ProjectDataRouteArgs{key: $key, projectID: $projectID}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProjectDataRouteArgs) return false;
    return key == other.key && projectID == other.projectID;
  }

  @override
  int get hashCode => key.hashCode ^ projectID.hashCode;
}

/// generated route for
/// [_i10.ProjectDataShowPage]
class ProjectDataShowRoute
    extends _i14.PageRouteInfo<ProjectDataShowRouteArgs> {
  ProjectDataShowRoute({
    _i15.Key? key,
    required _i18.ProjectDataEntity projectData,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ProjectDataShowRoute.name,
          args: ProjectDataShowRouteArgs(key: key, projectData: projectData),
          initialChildren: children,
        );

  static const String name = 'ProjectDataShowRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProjectDataShowRouteArgs>();
      return _i10.ProjectDataShowPage(
        key: args.key,
        projectData: args.projectData,
      );
    },
  );
}

class ProjectDataShowRouteArgs {
  const ProjectDataShowRouteArgs({this.key, required this.projectData});

  final _i15.Key? key;

  final _i18.ProjectDataEntity projectData;

  @override
  String toString() {
    return 'ProjectDataShowRouteArgs{key: $key, projectData: $projectData}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProjectDataShowRouteArgs) return false;
    return key == other.key && projectData == other.projectData;
  }

  @override
  int get hashCode => key.hashCode ^ projectData.hashCode;
}

/// generated route for
/// [_i11.ProjectDataStorePage]
class ProjectDataStoreRoute
    extends _i14.PageRouteInfo<ProjectDataStoreRouteArgs> {
  ProjectDataStoreRoute({
    _i15.Key? key,
    required String projectId,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ProjectDataStoreRoute.name,
          args: ProjectDataStoreRouteArgs(key: key, projectId: projectId),
          initialChildren: children,
        );

  static const String name = 'ProjectDataStoreRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProjectDataStoreRouteArgs>();
      return _i11.ProjectDataStorePage(
        key: args.key,
        projectId: args.projectId,
      );
    },
  );
}

class ProjectDataStoreRouteArgs {
  const ProjectDataStoreRouteArgs({this.key, required this.projectId});

  final _i15.Key? key;

  final String projectId;

  @override
  String toString() {
    return 'ProjectDataStoreRouteArgs{key: $key, projectId: $projectId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProjectDataStoreRouteArgs) return false;
    return key == other.key && projectId == other.projectId;
  }

  @override
  int get hashCode => key.hashCode ^ projectId.hashCode;
}

/// generated route for
/// [_i12.ProjectsIndexPage]
class ProjectsIndexRoute extends _i14.PageRouteInfo<void> {
  const ProjectsIndexRoute({List<_i14.PageRouteInfo>? children})
      : super(ProjectsIndexRoute.name, initialChildren: children);

  static const String name = 'ProjectsIndexRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i12.ProjectsIndexPage();
    },
  );
}

/// generated route for
/// [_i13.SplashPage]
class SplashRoute extends _i14.PageRouteInfo<void> {
  const SplashRoute({List<_i14.PageRouteInfo>? children})
      : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i13.SplashPage();
    },
  );
}
