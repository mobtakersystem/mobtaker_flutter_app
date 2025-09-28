import 'package:mpm/data/data_provider/dashboard/dashboard2_interface.dart'
    show Dashboard2DataProvider;
import 'package:mpm/data/entities/dashboard2_charts/production_status_entity.dart'
    show ProductionStatusEntity;
import 'package:mpm/data/entities/dashboard_chart/production_chart_entity.dart';
import 'package:mpm/data/network/network_request.dart';
import 'package:mpm/data/network/network_service.dart' show NetworkService;
import 'package:mpm/data/network/request_body.dart';

class Dashboard2ApiDataProvider extends Dashboard2DataProvider {
  final NetworkService _networkService;

  Dashboard2ApiDataProvider({required NetworkService networkService})
      : _networkService = networkService;

  @override
  Future<ProductionChartEntity> inventory(Map<String, dynamic> params) {
    // TODO: implement inventory
    throw UnimplementedError();
  }

  @override
  Future<ProductionChartEntity> productionComparison(
      Map<String, dynamic> params) {
    // TODO: implement productionComparison
    throw UnimplementedError();
  }

  @override
  Future<ProductionChartEntity> productionMdComparison(
      Map<String, dynamic> params) {
    // TODO: implement productionMdComparison
    throw UnimplementedError();
  }

  @override
  Future<ProductionStatusEntity> productionStatus(Map<String, dynamic> params) {
    return _networkService.execute(
      NetworkRequest(
          type: NetworkRequestType.post,
          path: "dashboard2/production/status",
          data: NetworkRequestBody.json(
            params,
          )),
      parser: (jsonParam) => ProductionStatusEntity.fromJson(jsonParam!),
    );
  }

  @override
  Future<ProductionChartEntity> productionStops(Map<String, dynamic> params) {
    // TODO: implement productionStops
    throw UnimplementedError();
  }

  @override
  Future<ProductionChartEntity> saleComparison(Map<String, dynamic> params) {
    // TODO: implement saleComparison
    throw UnimplementedError();
  }

  @override
  Future<ProductionChartEntity> saleExportDomestic(
      Map<String, dynamic> params) {
    // TODO: implement saleExportDomestic
    throw UnimplementedError();
  }

  @override
  Future<ProductionChartEntity> saleProductionRation(
      Map<String, dynamic> params) {
    // TODO: implement saleProductionRation
    throw UnimplementedError();
  }
}
