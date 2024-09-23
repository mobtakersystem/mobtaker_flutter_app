// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supervisor_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupervisorEntityImpl _$$SupervisorEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SupervisorEntityImpl(
      id: json['id'] as String,
      firstName: json['first_name'] as String? ?? "",
      lastName: json['last_name'] as String? ?? "",
      fullName: json['full_name'] as String? ?? "",
      nationalCode: json['national_code'] as String? ?? "",
      fatherName: json['father_name'] as String? ?? "",
      birthDate: const DateJsonParser().fromJson(json['birth_date'] as String?),
      cellphone: json['cellphone'] as String? ?? "",
      gender: json['gender'] as String? ?? "",
      profileImage: json['profile_image'] as String?,
      status: json['status'] as String? ?? "",
      email: json['email'] as String? ?? "",
      lastLogin: json['last_login'] as String?,
      numberOfAttempts: (json['number_of_attempts'] as num?)?.toInt() ?? 0,
      availableAt: const GenericDateJsonParserToMilliSec()
          .fromJson(json['available_at']),
      createdAt:
          const GenericDateJsonParserToMilliSec().fromJson(json['created_at']),
      updatedAt:
          const GenericDateJsonParserToMilliSec().fromJson(json['updated_at']),
      projectSupervisors: json['project_supervisors'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$SupervisorEntityImplToJson(
        _$SupervisorEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'full_name': instance.fullName,
      'national_code': instance.nationalCode,
      'father_name': instance.fatherName,
      'birth_date': const DateJsonParser().toJson(instance.birthDate),
      'cellphone': instance.cellphone,
      'gender': instance.gender,
      'profile_image': instance.profileImage,
      'status': instance.status,
      'email': instance.email,
      'last_login': instance.lastLogin,
      'number_of_attempts': instance.numberOfAttempts,
      'available_at':
          const GenericDateJsonParserToMilliSec().toJson(instance.availableAt),
      'created_at':
          const GenericDateJsonParserToMilliSec().toJson(instance.createdAt),
      'updated_at':
          const GenericDateJsonParserToMilliSec().toJson(instance.updatedAt),
      'project_supervisors': instance.projectSupervisors,
    };
