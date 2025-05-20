import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:mpm/data/entities/dashboard_chart/sale_data_chart_entity.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SaleBarChart extends HookConsumerWidget {
  final List<Data> data;
  final double height;
  final double width;

  SaleBarChart({
    super.key,
    required this.data,
    this.height = 300,
    this.width = double.infinity,
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
              'عملکرد: ${data.performance.toString().seRagham()}',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          if (seriesIndex == 1)
            Text(
              'برنامه: ${data.schedule.toString().seRagham()}',
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
    if(data.isEmpty) {
      return  Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset("assets/anim/empty_chart_anim.json",width: 200,height: 200),
          const Text("داده ای برای نمایش وجود ندارد"),
        ],
      );
    }
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      tooltipBehavior: _tooltipBehavior,
      legend: const Legend(
        isVisible: true,
        position: LegendPosition.bottom,
      ),
      series: <CartesianSeries<Data, String>>[
        ColumnSeries<Data, String>(
          dataSource: data,
          xValueMapper: (Data data, _) => data.date ?? '',
          yValueMapper: (Data data, _) => data.performance,
          color: const Color(0xFFF57C00),
          name: 'عملکرد',
          enableTooltip: true,
        ),
      ],
    );
  }
}
