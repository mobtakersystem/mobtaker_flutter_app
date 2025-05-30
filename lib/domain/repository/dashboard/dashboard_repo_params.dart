part of 'dashboard_repository.dart';

class UtilityParams extends Equatable {
  final String? utilityProductId;
  final DateTimeRange? dateRange;
  final bool showDetails;
  final bool showChartCumulative;
  final ChartPeriod chartPeriod;

  const UtilityParams({
    this.utilityProductId,
    this.dateRange,
    this.showDetails = false,
    this.showChartCumulative = false,
    this.chartPeriod = ChartPeriod.daily,
  });

  @override
  List<Object?> get props => [
        utilityProductId,
        dateRange,
        showDetails,
        showChartCumulative,
        chartPeriod,
      ];

  Map<String, dynamic> toJson() => {
        if (utilityProductId != null) "utility_product_id": utilityProductId,
        if (dateRange != null) "start_date": dateRange?.start.toPersianDate().toEnglishDigit(),
        if (dateRange != null) "end_date": dateRange?.end.toPersianDate().toEnglishDigit(),
        "show_details": showDetails ? 1 : 0,
        "utility_performance_chart_cumulative": showChartCumulative ? 1 : 0,
        "utility_performance_chart_period": chartPeriod.name,
      };

  UtilityParams copyWith({
    String? utilityProductId,
    DateTimeRange? dateRange,
    bool? showDetails,
    bool? showChartCumulative,
    ChartPeriod? chartPeriod,
  }) {
    return UtilityParams(
      utilityProductId: utilityProductId ?? this.utilityProductId,
      dateRange: dateRange ?? this.dateRange,
      showDetails: showDetails ?? this.showDetails,
      showChartCumulative: showChartCumulative ?? this.showChartCumulative,
      chartPeriod: chartPeriod ?? this.chartPeriod,
    );
  }
}
