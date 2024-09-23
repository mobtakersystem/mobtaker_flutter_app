// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserEntityImpl _$$UserEntityImplFromJson(Map<String, dynamic> json) =>
    _$UserEntityImpl(
      userName: json['userName'] as String? ?? "",
      userProfileImage: json['userProfileImage'] as String?,
      userRole: json['userRole'] as String? ?? "",
      userRoleName: json['userRoleName'] as String? ?? "",
    );

Map<String, dynamic> _$$UserEntityImplToJson(_$UserEntityImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'userProfileImage': instance.userProfileImage,
      'userRole': instance.userRole,
      'userRoleName': instance.userRoleName,
    };
