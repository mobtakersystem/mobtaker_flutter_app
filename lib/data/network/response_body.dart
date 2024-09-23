import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_body.g.dart';

part 'response_body.freezed.dart';

@freezed
class ResponseBody with _$ResponseBody {
  const factory ResponseBody({
     int? status,
    @Default("") String message,
    Map<String, dynamic>? options,
    Map<String, dynamic>? errors,
  }) = _ResponseBody;

  factory ResponseBody.fromJson(Map<String, dynamic> json) =>
      _$ResponseBodyFromJson(json);
}
