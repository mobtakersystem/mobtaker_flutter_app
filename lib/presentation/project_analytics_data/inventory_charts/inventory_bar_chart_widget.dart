import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/data/entities/dashboard_chart/enventory_chart_entity.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class InventoryBarChartWidget extends HookConsumerWidget {
  final InventoryChart data;
  final double height;
  final double width;

  InventoryBarChartWidget({
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
              'موجودی کل: ${data.totalInventory.toString().seRagham()}',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          if (seriesIndex == 1)
            Text(
              'موجودی در دسترس: ${data.currentInventory.toString().seRagham()}',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          if (seriesIndex == 2)
            Text(
              'تعهد شده فروش: ${data.saleCommitment.toString().seRagham()}',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          if (seriesIndex == 3)
            Text(
              'خرید در راه: ${data.buyCommitment.toString().seRagham()}',
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
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(
        isVisible: false,

      ),
      tooltipBehavior: _tooltipBehavior,
      legend: const Legend(
        isVisible: true,
        position: LegendPosition.bottom,
      ),
      series: <CartesianSeries<InventoryChart, String>>[
        ColumnSeries<InventoryChart, String>(
          dataSource: [data],
          xValueMapper: (InventoryChart data, _) => data.productSymbol ?? '',
          yValueMapper: (InventoryChart data, _) => data.totalInventory,
          color: context.primaryColor,
          name: 'موجودی در انبار(کل)',
          enableTooltip: true,
        ),
        ColumnSeries<InventoryChart, String>(
          dataSource: [data],
          xValueMapper: (InventoryChart data, _) => data.productSymbol ?? '',
          yValueMapper: (InventoryChart data, _) => data.currentInventory,
          color: const Color(0xFFF57C00),
          name: 'موجودی در دسترس',
          enableTooltip: true,
        ),
        ColumnSeries<InventoryChart, String>(
          dataSource: [data],
          xValueMapper: (InventoryChart data, _) => data.productSymbol ?? '',
          yValueMapper: (InventoryChart data, _) => data.saleCommitment,
          color: context.secondaryColor,
          name: 'تعهد شده فروش',
          enableTooltip: true,
        ),
        ColumnSeries<InventoryChart, String>(
          dataSource: [data],
          xValueMapper: (InventoryChart data, _) => data.productSymbol ?? '',
          yValueMapper: (InventoryChart data, _) => data.buyCommitment,
          color: context.tertiaryColor,
          name: 'خرید در راه',
          enableTooltip: true,
        ),
      ],
    );
  }
}
