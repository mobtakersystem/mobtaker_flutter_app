import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/widget/force_landscape_wodget.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:mpm/data/entities/dashboard_chart/stop_chart_entity.dart';

class StopsBarChart extends HookConsumerWidget {
  final List<Data> data;
  final double height;
  final double width;
  final bool isFullScreenMode;
  final bool enableZoom;

  const StopsBarChart({
    super.key,
    required this.data,
    this.height = 300,
    this.width = double.infinity,
    this.isFullScreenMode = false,
    this.enableZoom = true,
  });

  @override
  Widget build(BuildContext context, ref) {
    final tooltipBehavior = useMemoized(
      () => TooltipBehavior(
        enable: true,
        canShowMarker: true,
        builder: (chartData, point, series, pointIndex, seriesIndex) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "${data[pointIndex].reason}: ${data[pointIndex].totalHour.toString().seRagham()} ساعت",
                style: context.theme.tooltipTheme.textStyle,
              ),
            ],
          ),
        ),
      ),
      [data],
    );

    // Define different colors for bars
    final List<Color> barColors = [
      Colors.lightBlue,
      Colors.indigoAccent,
      Colors.indigo,
      Colors.orange,
      Colors.teal,
    ];

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
          primaryXAxis: const CategoryAxis(
            labelRotation: 0,
            maximumLabelWidth: 60,
            labelStyle: TextStyle(fontSize: 12),
          ),
          tooltipBehavior: tooltipBehavior,
          legend: const Legend(
            isVisible: false,
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
            BarSeries<Data, String>(
              dataSource: data,
              xValueMapper: (Data data, _) => data.reason ?? '',
              yValueMapper: (Data data, _) => data.totalHour,
              name: "توقفات",
              enableTooltip: true,
              pointColorMapper: (Data data, int index) =>
                  barColors[index % barColors.length],
            ),
          ],
        ),
        Positioned(
          top: 8,
          right: 8,
          child: isFullScreenMode
              ? IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.fullscreen_exit),
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
        builder: (context) => _FullScreenChart(data: data),
        fullscreenDialog: true,
      ),
    );
  }
}

class _FullScreenChart extends StatelessWidget {
  final List<Data> data;

  const _FullScreenChart({required this.data});

  @override
  Widget build(BuildContext context) {
    return ForceLandscapeWidget(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 32),
          child: StopsBarChart(
            data: data,
            height: double.maxFinite,
            isFullScreenMode: true,
            enableZoom: true,
          ),
        ),
      ),
    );
  }
}
