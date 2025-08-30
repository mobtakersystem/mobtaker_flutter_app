part of 'dashboard_repository.dart';

//// UtilityParams class for handling parameters related to utility data requests
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
        if (dateRange != null)
          "start_date": dateRange?.start.toIso8601String().split("T").first,
        if (dateRange != null)
          "end_date": dateRange?.end.toIso8601String().split("T").first,
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

// ProductionParams class for handling parameters related to production data requests
class ProductionParams extends Equatable {
  final DateTimeRange? dateRange;
  final bool showDetails;
  final bool showChartCumulative;
  final ChartPeriod chartPeriod;

  const ProductionParams({
    this.dateRange,
    this.showDetails = false,
    this.showChartCumulative = false,
    this.chartPeriod = ChartPeriod.daily,
  });

  bool get isEmpty => dateRange == null && !showDetails && !showChartCumulative;

  @override
  List<Object?> get props => [
        dateRange,
        showDetails,
        showChartCumulative,
        chartPeriod,
      ];

  Map<String, dynamic> toJson() => {
        if (dateRange != null)
          "start_date": dateRange?.start.toIso8601String().split("T").first,
        if (dateRange != null)
          "end_date": dateRange?.end.toIso8601String().split("T").first,
        "show_details": showDetails ? 1 : 0,
        "performance_chart_cumulative": showChartCumulative ? 1 : 0,
        "performance_chart_period": chartPeriod.name,
      };

  ProductionParams copyWith({
    DateTimeRange? dateRange,
    bool? showDetails,
    bool? showChartCumulative,
    ChartPeriod? chartPeriod,
  }) {
    return ProductionParams(
      dateRange: dateRange ?? this.dateRange,
      showDetails: showDetails ?? this.showDetails,
      showChartCumulative: showChartCumulative ?? this.showChartCumulative,
      chartPeriod: chartPeriod ?? this.chartPeriod,
    );
  }
}

// StopParams class for handling parameters related to stop data requests [show_details, show_chart_cumulative, stop_chart_period, start_date,end_date] are not used in stop charts
class StopParams extends Equatable {
  final DateTimeRange? dateRange;
  final bool showDetails;
  final ChartPeriod chartPeriod;

  const StopParams({
    this.dateRange,
    this.showDetails = false,
    this.chartPeriod = ChartPeriod.daily,
  });

  @override
  List<Object?> get props => [
        dateRange,
        showDetails,
        chartPeriod,
      ];

  Map<String, dynamic> toJson() => {
        if (dateRange != null)
          "start_date": dateRange?.start.toIso8601String().split("T").first,
        if (dateRange != null)
          "end_date": dateRange?.end.toIso8601String().split("T").first,
        "show_details": showDetails ? 1 : 0,
        "stop_chart_period": chartPeriod.name,
      };

  StopParams copyWith({
    DateTimeRange? dateRange,
    bool? showDetails,
    ChartPeriod? chartPeriod,
  }) {
    return StopParams(
      dateRange: dateRange ?? this.dateRange,
      showDetails: showDetails ?? this.showDetails,
      chartPeriod: chartPeriod ?? this.chartPeriod,
    );
  }
}

// SalesParams class for handling parameters related to sales data requests
class SalesParams extends Equatable {
  final DateTimeRange? dateRange;
  final bool showDetails;
  final bool showChartCumulative;
  final ChartPeriod chartPeriod;

  const SalesParams({
    this.dateRange,
    this.showDetails = false,
    this.showChartCumulative = false,
    this.chartPeriod = ChartPeriod.monthly,
  });

  @override
  List<Object?> get props => [
        dateRange,
        showDetails,
        chartPeriod,
        showChartCumulative,
      ];

  Map<String, dynamic> toJson() => {
        if (dateRange != null)
          "start_date": dateRange?.start.toIso8601String().split("T").first,
        if (dateRange != null)
          "end_date": dateRange?.end.toIso8601String().split("T").first,
        "show_details": showDetails ? 1 : 0,
        "sales_chart_cumulative": showChartCumulative ? 1 : 0,
        "sales_chart_period": chartPeriod.name,
      };

  SalesParams copyWith({
    DateTimeRange? dateRange,
    bool? showDetails,
    ChartPeriod? chartPeriod,
    bool? showChartCumulative,
  }) {
    return SalesParams(
      dateRange: dateRange ?? this.dateRange,
      showDetails: showDetails ?? this.showDetails,
      chartPeriod: chartPeriod ?? this.chartPeriod,
      showChartCumulative: showChartCumulative ?? this.showChartCumulative,
    );
  }
}

// InventoryParams class for handling parameters related to inventory data requests (only date range is used)
class InventoryParams extends Equatable {
  final DateTimeRange? dateRange;

  const InventoryParams({
    this.dateRange,
  });

  @override
  List<Object?> get props => [dateRange];

  Map<String, dynamic> toJson() => {
        if (dateRange != null)
          "start_date": dateRange?.start.toIso8601String().split("T").first,
        if (dateRange != null)
          "end_date": dateRange?.end.toIso8601String().split("T").first,
      };

  InventoryParams copyWith({
    DateTimeRange? dateRange,
  }) {
    return InventoryParams(
      dateRange: dateRange ?? this.dateRange,
    );
  }
}
