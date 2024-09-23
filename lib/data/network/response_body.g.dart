// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseBodyImpl _$$ResponseBodyImplFromJson(Map<String, dynamic> json) =>
    _$ResponseBodyImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String? ?? "",
      options: json['options'] as Map<String, dynamic>?,
      errors: json['errors'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ResponseBodyImplToJson(_$ResponseBodyImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'options': instance.options,
      'errors': instance.errors,
    };
