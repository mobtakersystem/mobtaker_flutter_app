import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'package:mpm/data/entities/dashboard_chart/stop_chart_entity.dart';

class StopsBarChart extends HookConsumerWidget {
  final List<Data> data;
  final double height;
  final double width;

  const StopsBarChart({
    super.key,
    required this.data,
    this.height = 300,
    this.width = double.infinity,
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
                  style: const TextStyle(
                    color: Colors.white,
                  ),
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
    return SfCartesianChart(
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
    );
  }
}
