import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/widget/force_landscape_wodget.dart';
import 'package:mpm/data/entities/dashboard_chart/enventory_chart_entity.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class InventoryBarChartWidget extends HookConsumerWidget {
  final InventoryChart data;
  final double height;
  final double width;
  final bool isFullScreenMode;
  final bool enableZoom;
  final bool showLable;

  const InventoryBarChartWidget({
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
    final tooltipBehavior = useMemoized(
      () => TooltipBehavior(
        enable: true,
        canShowMarker: true,
        builder: (data, point, series, pointIndex, seriesIndex) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (seriesIndex == 0)
                pointIndex == 0
                    ? Text(
                        '${this.data.chartTotalInventoryTitle}: ${data.currentInventory.toString().seRagham()}',
                        style: context.theme.tooltipTheme.textStyle,
                      )
                    : Text(
                        '${this.data.chartTotalInventoryTitle}: ${data.totalInventory.toString().seRagham()}',
                        style: context.theme.tooltipTheme.textStyle,
                      ),
              if (seriesIndex == 1)
                pointIndex == 0
                    ? Text(
                        '${this.data.chartCurrentInventoryTitle}: ${data.totalInventory.toString().seRagham()}',
                        style: context.theme.tooltipTheme.textStyle,
                      )
                    : Text(
                        '${this.data.chartCurrentInventoryTitle}: ${data.currentInventory.toString().seRagham()}',
                        style: context.theme.tooltipTheme.textStyle,
                      ),
              if (seriesIndex == 2)
                Text(
                  'تعهد شده فروش: ${data.saleCommitment.toString().seRagham()}',
                  style: context.theme.tooltipTheme.textStyle,
                ),
              if (seriesIndex == 3)
                Text(
                  'خرید در راه: ${data.buyCommitment.toString().seRagham()}',
                  style: context.theme.tooltipTheme.textStyle,
                ),
            ],
          ),
        ),
      ),
      [data],
    );
    return Stack(
      children: [
        SfCartesianChart(
          primaryXAxis: const CategoryAxis(
            isVisible: false,
          ),
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
          series: <CartesianSeries<InventoryChart, String>>[
            ColumnSeries<InventoryChart, String>(
              dataSource: [data],
              xValueMapper: (InventoryChart data, _) =>
                  data.productSymbol ?? '',
              yValueMapper: (InventoryChart data, index) =>
                  index == 0 ? data.currentInventory : data.totalInventory,
              color: const Color(0xFF6EA8FE),
              name: data.chartTotalInventoryTitle,
              enableTooltip: true,
              dataLabelSettings: DataLabelSettings(
                isVisible: showLable,
                labelAlignment: ChartDataLabelAlignment.middle,
                labelPosition: ChartDataLabelPosition.inside,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ColumnSeries<InventoryChart, String>(
              dataSource: [data],
              xValueMapper: (InventoryChart data, _) =>
                  data.productSymbol ?? '',
              yValueMapper: (InventoryChart data, index) =>
                  index == 0 ? data.totalInventory : data.currentInventory,
              color: const Color(0xFFFD9843),
              name: data.chartCurrentInventoryTitle,
              enableTooltip: true,
              dataLabelSettings: DataLabelSettings(
                isVisible: showLable,
                labelAlignment: ChartDataLabelAlignment.middle,
                labelPosition: ChartDataLabelPosition.inside,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            if (data.productSymbol != "PELLET")
              ColumnSeries<InventoryChart, String>(
                dataSource: [data],
                xValueMapper: (InventoryChart data, _) =>
                    data.productSymbol ?? '',
                yValueMapper: (InventoryChart data, _) => data.saleCommitment,
                color: const Color(0xFF6C762F),
                name: 'تعهد شده فروش',
                enableTooltip: true,
                dataLabelSettings: DataLabelSettings(
                  isVisible: showLable,
                  labelAlignment: ChartDataLabelAlignment.middle,
                  labelPosition: ChartDataLabelPosition.inside,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            if (data.productSymbol != "STEEL")
              ColumnSeries<InventoryChart, String>(
                dataSource: [data],
                xValueMapper: (InventoryChart data, _) =>
                    data.productSymbol ?? '',
                yValueMapper: (InventoryChart data, _) => data.buyCommitment,
                color: const Color(0xFF6C757D),
                name: 'خرید در راه',
                enableTooltip: true,
                dataLabelSettings: DataLabelSettings(
                  isVisible: showLable,
                  labelAlignment: ChartDataLabelAlignment.middle,
                  labelPosition: ChartDataLabelPosition.inside,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
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
  final InventoryChart data;
  final bool showLable;

  const _FullScreenChart({required this.data, this.showLable = false});

  @override
  Widget build(BuildContext context) {
    return ForceLandscapeWidget(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: InventoryBarChartWidget(
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
