// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_value_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IdValueEntityImpl _$$IdValueEntityImplFromJson(Map<String, dynamic> json) =>
    _$IdValueEntityImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String? ?? "",
    );

Map<String, dynamic> _$$IdValueEntityImplToJson(_$IdValueEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };
