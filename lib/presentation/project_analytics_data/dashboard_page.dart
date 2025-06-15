import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/riverpod_helper_multi.dart';
import 'package:mpm/data/entities/dashboard_chart/utility_chart_entity.dart';
import 'package:mpm/domain/failure_model.dart';
import 'package:mpm/presentation/auth/providers/auth_provider.dart';
import 'package:mpm/presentation/project_analytics_data/inventory_charts/inventory_charts.dart';
import 'package:mpm/presentation/project_analytics_data/production_charts/production_chart.dart';
import 'package:mpm/presentation/project_analytics_data/inventory_charts/providers/inventory_chart_provider.dart';
import 'package:mpm/presentation/project_analytics_data/production_charts/providers/production_chart_provider.dart';
import 'package:mpm/presentation/project_analytics_data/sale_charts/providers/sale_chart_provider.dart';
import 'package:mpm/presentation/project_analytics_data/stops_charts/providers/stops_chart_provider.dart';
import 'package:mpm/presentation/project_analytics_data/sale_charts/sale_charts.dart';
import 'package:mpm/presentation/project_analytics_data/stops_charts/stops_charts.dart';
import 'package:mpm/presentation/project_analytics_data/utility_charts/providers/utility_chart_provider.dart';
import 'package:mpm/presentation/project_analytics_data/utility_charts/utility_charts.dart';
import 'package:mpm/routes/app_router.gr.dart';

@RoutePage()
class DashboardPage extends HookConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productionChart = ref.watch(productionChartProvider);
    final saleChart = ref.watch(saleChartProvider);
    final inventoryChartsState = ref.watch(inventoryChartProvider);
    final stopChartsState = ref.watch(stopsChartProvider);
    final utilityChart = ref.watch(utilityProductsProvider);
    ref.listen(
      productionChartProvider,
      (previous, next) async {
        if (next.hasError && next.error is UnAuthorizedFailure) {
          Future.delayed(const Duration(milliseconds: 700)).then(
                (value) {
              ref.read(authProvider.notifier).unAuthenticated().then((value) {
                if (context.mounted) {
                  context.popAllAndPush(const SplashRoute());
                }
              });
            },
          );
        } else if (next.hasValue &&
            (next.value?.isLeft() ?? true) &&
            next.value?.getLeft().toNullable() is UnAuthorizedFailure) {
          Future.delayed(const Duration(milliseconds: 700)).then(
            (value) {
              ref.read(authProvider.notifier).unAuthenticated().then((value) {
                if (context.mounted) {
                  context.popAllAndPush(const SplashRoute());
                }
              });
            },
          );
        }
      },
    );
    final tabController = useTabController(initialLength: 5, keys: [
      productionChart,
      saleChart,
      inventoryChartsState,
      stopChartsState,
      utilityChart
    ]);
    // final scrollController = useScrollController(keys: [productionChart]);
    // final observerController = useMemoized(
    //     () => SliverObserverController(controller: scrollController),
    //     [scrollController]);
    //
    // // Add a listener to handle tab changes
    // useEffect(() {
    //   void onTabChanged() {
    //     // if (!tabController.indexIsChanging) {
    //     //   print('Tab changed to: ${tabController.index}');
    //     //   observerController.animateTo(
    //     //     index: tabController.index,
    //     //     duration: const Duration(milliseconds: 300),
    //     //     curve: Curves.easeInOut,
    //     //   );
    //     // }
    //   }
    //
    //   tabController.addListener(onTabChanged);
    //   return () => tabController.removeListener(onTabChanged);
    // }, [tabController, observerController]);

    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverAppBar(
            title: const Text('داشبورد'),
            floating: true,
            pinned: true,
            snap: false,
            forceElevated: innerBoxIsScrolled,
            bottom: TabBar(
              controller: tabController,
              labelColor: Theme.of(context).colorScheme.primary,
              unselectedLabelColor:
                  Theme.of(context).colorScheme.onSurface.withAlpha(150),
              indicatorColor: Theme.of(context).colorScheme.primary,
              tabs: const [
                Tab(text: 'تولید'),
                Tab(text: 'فروش'),
                Tab(text: 'انبار'),
                Tab(text: 'توقفات'),
                Tab(text: 'یوتیلیتی'),
              ],
              isScrollable: true,
            ),
          )
        ];
      },
      body: RiverPodConnectionHelperWidgetMulti(
        values: [
          productionChart,
          saleChart,
          inventoryChartsState,
          stopChartsState,
          utilityChart
        ],
        successBuilder: (data) {
          final utility = data[4] as UtilityChartEntity;
          return CustomScrollView(
            slivers: [
              const ProductionChartWidget(),
              const SaleChartsWidget(),
              const InventoryChartsWidget(),
              const StopChartsWidget(),
              UtilityChartsWidget(
                chartsData: utility,
              ),
            ],
          );
        },
        tryAgain: () {
          ref.invalidate(productionChartProvider);
          ref.invalidate(saleChartProvider);
          ref.invalidate(inventoryChartProvider);
          ref.invalidate(stopsChartProvider);
          ref.invalidate(utilityProductsProvider);
        },
      ),
    );
  }
}
