import 'package:auto_route/auto_route.dart';
import 'package:mpm/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: CheckOtpRoute.page),
        AutoRoute(page: CellphoneLoginRoute.page),
        AutoRoute(page: HomeRoute.page, children: [
          AutoRoute(
            page: DashboardRoute.page,
            initial: true,
          ),
          AutoRoute(
            page: ProjectsIndexRoute.page,
          ),
        ]),
        AutoRoute(page: ProjectDataStoreRoute.page),
        AutoRoute(page: ProjectDataShowRoute.page),
        AutoRoute(page: ProjectDataRoute.page),
        AutoRoute(page: ProjectDataEditRoute.page),
        AutoRoute(page: LocalsProjectDataRoute.page),
        AutoRoute(page: ImagesViewerRoute.page),
      ];
}
