import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/widget/force_landscape_wodget.dart';
import 'package:mpm/data/entities/dashboard_chart/utility_chart_entity.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class UtilityColumnChart extends HookConsumerWidget {
  final List<Data> data;
  final double height;
  final double width;
  final bool isFullScreenMode;
  final bool enableZoom;
  final bool showLable;

  const UtilityColumnChart({
    super.key,
    required this.data,
    this.height = 300,
    this.width = double.infinity,
    this.isFullScreenMode = false,
    this.enableZoom = true,
    this.showLable = true,
  });

  @override
  Widget build(BuildContext context, ref) {
    final tooltipBehavior = useMemoized(() => TooltipBehavior(
          enable: true,
          canShowMarker: true,
          builder: (data, point, series, pointIndex, seriesIndex) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (seriesIndex == 0)
                  Text(
                    'برنامه: ${data.schedule.toString().seRagham()}',
                    style: context.theme.tooltipTheme.textStyle,
                  ),
                if (seriesIndex == 1)
                  Text(
                    'عملکرد: ${data.performance.toString().seRagham()}',
                    style: context.theme.tooltipTheme.textStyle,
                  ),
                if (seriesIndex == 2)
                  Text(
                    'انحراف: ${data.deviation}%',
                    style: context.theme.tooltipTheme.textStyle,
                  ),
              ],
            ),
          ),
        ));

    if (data.isEmpty) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset("assets/anim/empty_chart_anim.json",
              width: 200, height: 200),
          const Text("داده ای برای نمایش وجود ندارد"),
        ],
      );
    }
    return Stack(
      children: [
        SfCartesianChart(
          primaryXAxis: const CategoryAxis(),
          tooltipBehavior: tooltipBehavior,
          legend: const Legend(
            isVisible: true,
            position: LegendPosition.bottom,
          ),
          zoomPanBehavior: ZoomPanBehavior(
            enablePinching: enableZoom,
            enablePanning: enableZoom,
            enableDoubleTapZooming: enableZoom,
            enableMouseWheelZooming: enableZoom,
            zoomMode: ZoomMode.x,
          ),
          series: <CartesianSeries<Data, String>>[
            ColumnSeries<Data, String>(
              dataSource: data,
              xValueMapper: (Data data, _) => data.date ?? '',
              yValueMapper: (Data data, _) => data.schedule,
              color: context.primaryColor,
              name: 'برنامه',
              enableTooltip: true,
              dataLabelSettings: DataLabelSettings(
                isVisible: showLable,
                labelAlignment: ChartDataLabelAlignment.middle,
                labelPosition: ChartDataLabelPosition.inside,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
                builder: (data, point, series, pointIndex, seriesIndex) =>
                    Text(data.schedule.toString().seRagham(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        )),
              ),
            ),
            ColumnSeries<Data, String>(
              dataSource: data,
              xValueMapper: (Data data, _) => data.date ?? '',
              yValueMapper: (Data data, _) => data.performance,
              color: const Color(0xFFF57C00),
              name: 'عملکرد',
              enableTooltip: true,
              dataLabelSettings: DataLabelSettings(
                isVisible: showLable,
                labelAlignment: ChartDataLabelAlignment.middle,
                labelPosition: ChartDataLabelPosition.inside,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
                builder: (data, point, series, pointIndex, seriesIndex) =>
                    Text(data.performance.toString().seRagham(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        )),
              ),
            ),
            LineSeries<Data, String>(
              dataSource: data,
              xValueMapper: (Data data, _) => data.date ?? '',
              yValueMapper: (Data data, _) => (data.deviationStartLine ?? 0),
              color: Colors.blueAccent,
              name: ' انحراف',
              markerSettings: const MarkerSettings(
                isVisible: true,
                height: 6,
                width: 6,
                shape: DataMarkerType.circle,
                borderWidth: 2,
                borderColor: Colors.blueAccent,
              ),
              enableTooltip: true,
              dataLabelSettings: DataLabelSettings(
                isVisible: showLable,
                labelAlignment: ChartDataLabelAlignment.top,
                labelPosition: ChartDataLabelPosition.outside,
                color: Colors.blueAccent,
                opacity: 0.7,
                builder: (dynamic data, dynamic point, dynamic series,
                    int pointIndex, int seriesIndex) {
                  final Data chartData = data as Data;
                  return Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent.withAlpha(180),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      '${chartData.deviation ?? 0}%',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
        Positioned(
          top: 8,
          right: 8,
          child: isFullScreenMode
              ? IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor:
                        context.isLightTheme ? Colors.black12 : Colors.white24,
                    foregroundColor: Colors.orange,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close),
                )
              : IconButton(
                  icon: const Icon(Icons.fullscreen),
                  onPressed: () => _showFullScreenChart(context),
                  tooltip: 'نمایش تمام صفحه',
                ),
        ),
      ],
    );
  }

  void _showFullScreenChart(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => _FullScreenChart(
          data: data,
          showLable: showLable,
        ),
        fullscreenDialog: true,
      ),
    );
  }
}

class _FullScreenChart extends StatelessWidget {
  final List<Data> data;
  final bool showLable;

  const _FullScreenChart({required this.data, this.showLable = false});

  @override
  Widget build(BuildContext context) {
    return ForceLandscapeWidget(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: UtilityColumnChart(
            data: data,
            height: double.maxFinite,
            isFullScreenMode: true,
            enableZoom: true,
            showLable: showLable,
          ),
        ),
      ),
    );
  }
}
