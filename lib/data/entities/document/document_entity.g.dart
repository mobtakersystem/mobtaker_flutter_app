// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentEntityImpl _$$DocumentEntityImplFromJson(Map<String, dynamic> json) =>
    _$DocumentEntityImpl(
      id: json['id'] as String,
      title: json['title'] as String?,
      documentableType: json['documentable_type'] as String?,
      documentableId: json['documentable_id'] as String?,
      mimeType: json['mime_type'] as String?,
      createdAt: const DateJsonParser().fromJson(json['created_at'] as String?),
      user: json['user'] as String?,
      path: json['path'] as String?,
      preSignedName: json['preSignedName'] as String?,
    );

Map<String, dynamic> _$$DocumentEntityImplToJson(
        _$DocumentEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'documentable_type': instance.documentableType,
      'documentable_id': instance.documentableId,
      'mime_type': instance.mimeType,
      'created_at': const DateJsonParser().toJson(instance.createdAt),
      'user': instance.user,
      'path': instance.path,
      'preSignedName': instance.preSignedName,
    };
