import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
import 'package:scrollview_observer/scrollview_observer.dart';

final dashboardScrollProvider =
    StateNotifierProvider<DashboardScrollNotifier, int>((ref) {
  return DashboardScrollNotifier();
});

class DashboardScrollNotifier extends StateNotifier<int> {
  DashboardScrollNotifier() : super(0);

  void setCurrentIndex(int index) {
    state = index;
  }
}

class DashboardPage extends StatefulHookConsumerWidget {
  const DashboardPage({super.key});

  @override
  ConsumerState createState() => _DashboardPageState();
}

class _DashboardPageState extends ConsumerState<DashboardPage> {
  final appBarKey = GlobalKey();
  final GlobalKey tabBarKey = GlobalKey();

  final nestedScrollViewKey = GlobalKey<NestedScrollViewState>();
  final outerScrollController = ScrollController();
  late final SliverObserverController sliverObserverController;
  Map<int, BuildContext> sliverIndexCtxMap = {};
  bool isIgnoreCalcTabBarIndex = false;
  final nestedScrollUtil = NestedScrollUtil();
  final firstItemKey = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];

  @override
  void initState() {
    super.initState();
    sliverObserverController = SliverObserverController(
      controller: outerScrollController,
    );
    nestedScrollUtil.outerScrollController = outerScrollController;
  }

  @override
  void dispose() {
    outerScrollController.dispose();
    super.dispose();
  }

  void scrollToSection(BuildContext targetContext, bool enableSmoothScroll,
      {Duration duration = const Duration(milliseconds: 600)}) {
    final RenderBox box = targetContext.findRenderObject() as RenderBox;
    final position = box.localToGlobal(Offset.zero);
    final scrollOffset = position.dy;
    final headerExtend = ObserverUtils.calcPersistentHeaderExtent(
      key: appBarKey,
      offset: outerScrollController.offset,
    );
    if (enableSmoothScroll) {
      nestedScrollUtil.bodyScrollController?.animateTo(
        scrollOffset +
            nestedScrollUtil.bodyScrollController!.offset -
            headerExtend,
        duration: duration,
        curve: Curves.easeInOut,
      );
    } else {
      nestedScrollUtil.bodyScrollController?.jumpTo(
        scrollOffset +
            nestedScrollUtil.bodyScrollController!.offset -
            headerExtend,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final productionChart = ref.watch(productionChartProvider);
    final saleChart = ref.watch(saleChartProvider);
    final inventoryChartsState = ref.watch(inventoryChartProvider);
    final stopChartsState = ref.watch(stopsChartProvider);
    final utilityChart = ref.watch(utilityProductsProvider);
    final currentTabIndex = ref.watch(dashboardScrollProvider);

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

    return SliverViewObserver(
      controller: sliverObserverController,
      sliverContexts: () => sliverIndexCtxMap.values.toList(),
      dynamicLeadingOffset: () {
        return ObserverUtils.calcPersistentHeaderExtent(
          key: appBarKey,
          offset: outerScrollController.offset,
        );
      },
      onObserveViewport: (result) {
        if (isIgnoreCalcTabBarIndex) return;
        int? currentTabIndex;
        final currentFirstSliverCtx = result.firstChild.sliverContext;
        for (var sectionIndex in sliverIndexCtxMap.keys) {
          final ctx = sliverIndexCtxMap[sectionIndex];
          if (ctx == null) continue;
          if (currentFirstSliverCtx != ctx) continue;
          final visible =
              (ctx.findRenderObject() as RenderSliver).geometry?.visible ??
                  false;
          if (!visible) continue;
          currentTabIndex = sectionIndex;
          break;
        }
        if (currentTabIndex == null) return;
        ref
            .read(dashboardScrollProvider.notifier)
            .setCurrentIndex(currentTabIndex);
        tabController.animateTo(currentTabIndex);
      },
      child: NestedScrollView(
        key: nestedScrollViewKey,
        controller: outerScrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              key: appBarKey,
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
                onTap: (index) async {
                  isIgnoreCalcTabBarIndex = true;
                  final targetContext = firstItemKey[index].currentContext;
                  if (targetContext != null) {
                    scrollToSection(
                      targetContext,
                      true,
                    );
                  }
                  Future.delayed(const Duration(milliseconds: 600), () async {
                    if (index != 0 &&
                        targetContext != null &&
                        targetContext.mounted) {
                      scrollToSection(targetContext, false);
                    }
                    await Future.delayed(const Duration(milliseconds: 50));
                    isIgnoreCalcTabBarIndex = false;
                  });
                },
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
        body: Consumer(builder: (context, ref, child)  {
          // Get the inner scroll controller.
          final innerScrollController = PrimaryScrollController.of(context);
          if (nestedScrollUtil.bodyScrollController != innerScrollController) {
            nestedScrollUtil.bodyScrollController = innerScrollController;
          }
          return RiverPodConnectionHelperWidgetMulti(
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
                  SliverObserveContext(
                    child: ProductionChartWidget(
                      topWidgetKey: firstItemKey[0],
                    ),
                    onObserve: (context) {
                      sliverIndexCtxMap[0] = context;
                      nestedScrollUtil.bodySliverContexts.add(context);
                    },
                  ),
                  SliverObserveContext(
                    child: SaleChartsWidget(
                      topWidgetKey: firstItemKey[1],
                    ),
                    onObserve: (context) {
                      sliverIndexCtxMap[1] = context;
                      nestedScrollUtil.bodySliverContexts.add(context);
                    },
                  ),
                  SliverObserveContext(
                    child: InventoryChartsWidget(
                      topWidgetKey: firstItemKey[2],
                    ),
                    onObserve: (context) {
                      sliverIndexCtxMap[2] = context;
                      nestedScrollUtil.bodySliverContexts.add(context);
                    },
                  ),
                  SliverObserveContext(
                    child: StopChartsWidget(
                      topWidgetKey: firstItemKey[3],
                    ),
                    onObserve: (context) {
                      sliverIndexCtxMap[3] = context;
                      nestedScrollUtil.bodySliverContexts.add(context);
                    },
                  ),
                  SliverObserveContext(
                    child: UtilityChartsWidget(
                      chartsData: utility,
                      topWidgetKey: firstItemKey[4],
                    ),
                    onObserve: (context) {
                      sliverIndexCtxMap[4] = context;
                      nestedScrollUtil.bodySliverContexts.add(context);
                    },
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
          );
        }),
      ),
    );
  }

  double calcPersistentHeaderExtent(
    double offset, {
    required bool isBody,
  }) {
    double value = ObserverUtils.calcPersistentHeaderExtent(
      key: appBarKey,
      offset: offset,
    );
    if (isBody) {
      value += ObserverUtils.calcPersistentHeaderExtent(
        key: tabBarKey,
        offset: offset,
      );
    }
    return value;
  }
}
