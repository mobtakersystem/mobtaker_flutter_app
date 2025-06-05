import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/widget/force_landscape_wodget.dart';
import 'package:mpm/data/entities/dashboard_chart/production_chart_entity.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ProductionBarChart extends HookConsumerWidget {
  final List<Data> data;
  final double height;
  final double width;
  final bool isFullScreenMode;
  final bool enableZoom;

  ProductionBarChart({
    super.key,
    required this.data,
    this.height = 300,
    this.width = double.infinity,
    this.isFullScreenMode = false,
    this.enableZoom = false,
  });

  final _tooltipBehavior = TooltipBehavior(
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
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          if (seriesIndex == 1)
            Text(
              'عملکرد: ${data.performance.toString().seRagham()}',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          if (seriesIndex == 2)
            Text(
              'درصد تحقق: ${data.deviation}%',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context, ref) {
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
          tooltipBehavior: _tooltipBehavior,
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
            ),
            ColumnSeries<Data, String>(
              dataSource: data,
              xValueMapper: (Data data, _) => data.date ?? '',
              yValueMapper: (Data data, _) => data.performance,
              color: const Color(0xFFF57C00),
              name: 'عملکرد',
              enableTooltip: true,
            ),
            LineSeries<Data, String>(
              dataSource: data,
              xValueMapper: (Data data, _) => data.date ?? '',
              yValueMapper: (Data data, _) =>
                  (data.deviation ?? 0) + (data.deviationStartLine ?? 0),
              color: Colors.blueAccent,
              name: 'درصد تحقق',
              markerSettings: const MarkerSettings(
                isVisible: true,
                height: 6,
                width: 6,
                shape: DataMarkerType.circle,
                borderWidth: 2,
                borderColor: Colors.blueAccent,
              ),
              enableTooltip: true,
            )
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
          child: ProductionBarChart(
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
