import 'package:json_annotation/json_annotation.dart';

class DateJsonParser implements JsonConverter<DateTime?, String?> {
  const DateJsonParser();

  @override
  DateTime? fromJson(String? json) {
    if (json == null) {
      return null;
    }
    return DateTime.parse(json);
  }

  @override
  String? toJson(DateTime? object) {
    if (object == null) {
      return null;
    }
    return object.toIso8601String();
  }
}

class GenericDateJsonParserToMilliSec
    implements JsonConverter<DateTime?, Object?> {
  const GenericDateJsonParserToMilliSec();

  @override
  DateTime? fromJson(Object? json) {
    if (json == null) {
      return null;
    } else if (json is int) {
      return DateTime.fromMillisecondsSinceEpoch(json);
    } else if (json is String) {
      return DateTime.parse(json);
    } else if (json is DateTime) {
      return json;
    } else {
      throw Exception("Invalid date format");
    }
  }

  @override
  int? toJson(DateTime? object) {
    if (object == null) {
      return null;
    }
    return object.millisecondsSinceEpoch;
  }
}
