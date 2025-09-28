// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:mpm/data/data_provider/dashboard/dashboard2_impl.dart';
import 'package:mpm/data/network/network_service.dart';


import 'test_utils.dart';

void main() {
  final provider = Dashboard2ApiDataProvider(
      networkService: NetworkService(
    baseUrl: TestValues.apiBaseUrl,
  )..addAuthToken(TestValues.authToken));
  test('Counter increments smoke test', () async {
    final result = await provider.productionStatus({
      "product_symbol": "STEEL",
      "performance_chart_period": "weekly",
    }).catchError((er) {
      print(er);
    });
    print(result);
  });
}
