import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'request_body.freezed.dart';
@freezed
class NetworkRequestBody with _$NetworkRequestBody {
  const factory NetworkRequestBody.empty() = Empty;
  const factory NetworkRequestBody.json(Map<String, dynamic> data) = Json;
  const factory NetworkRequestBody.formData(FormData data) = FormDataBody;
  const factory NetworkRequestBody.text(String data) = Text;
  const factory NetworkRequestBody.list(List<Map<String, dynamic>> data) = ListData;
}