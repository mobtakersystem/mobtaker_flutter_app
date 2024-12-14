import 'package:mpm/common/parser/date_json_parser.dart';
import 'package:mpm/common/sl_config.dart';
import 'package:mpm/data/network/custom_exception.dart';
import 'package:sembast/sembast.dart';

class LocalHandlerData {
  final parser = const GenericDateJsonParserToMilliSec();
  final StoreRef<String, Map<String, Object?>> _dataSetUpdateLog;
  final DB _db;

  const LocalHandlerData(
      {required StoreRef<String, Map<String, Object?>> dataSetUpdateLog,
      required DB db})
      : _dataSetUpdateLog = dataSetUpdateLog,
        _db = db;

  Future<DateTime> getLastUpdateDataSet(String name) async {
    final result = await _dataSetUpdateLog.record(name).get(_db);
    if (result == null || result['updatedAt'] == null) {
      NotFoundException(errorMessage: '');
    }
    return parser.fromJson(result!['updatedAt'])!;
  }

  Stream<DateTime?> getLastUpdateDataSetStream(String name) {
    final result = _dataSetUpdateLog.record(name).onSnapshot(_db);
    return result.map(
      (event) => event?.value == null || event?.value['updatedAt'] == null
          ? null
          : parser.fromJson(event?.value['updatedAt']),
    );
  }

  Future<void> setLastUpdateDataSet(String name, DateTime dateTime) async {
    await _dataSetUpdateLog.record(name).put(
      _db,
      {
        "updatedAt": parser.toJson(dateTime),
      },
    );
  }
}
