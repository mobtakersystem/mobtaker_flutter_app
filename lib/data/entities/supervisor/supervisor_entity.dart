import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mpm/common/parser/date_json_parser.dart';

part 'supervisor_entity.freezed.dart';

part 'supervisor_entity.g.dart';

@freezed
class SupervisorEntity with _$SupervisorEntity {
  const factory SupervisorEntity({
    required String id,
    @JsonKey(name: 'first_name') @Default("") String firstName,
    @JsonKey(name: 'last_name') @Default("") String lastName,
    @JsonKey(name: 'full_name') @Default("") String fullName,
    @JsonKey(name: 'national_code') @Default("") String nationalCode,
    @JsonKey(name: 'father_name') @Default("") String fatherName,
    @JsonKey(name: 'birth_date') @DateJsonParser() DateTime? birthDate,
    @Default("") String cellphone,
    @Default("") String gender,
    @JsonKey(name: 'profile_image') String? profileImage,
    @Default("") String status,
    @Default("") String email,
    @JsonKey(name: 'last_login') String? lastLogin,
    @JsonKey(name: 'number_of_attempts') @Default(0) int numberOfAttempts,
    @JsonKey(name: 'available_at') @GenericDateJsonParserToMilliSec() DateTime? availableAt,
    @JsonKey(name: 'created_at') @GenericDateJsonParserToMilliSec() DateTime? createdAt,
    @JsonKey(name: 'updated_at') @GenericDateJsonParserToMilliSec() DateTime? updatedAt,
    @JsonKey(name: 'project_supervisors')
    Map<String, dynamic>? projectSupervisors,
  }) = _SupervisorEntity;

  factory SupervisorEntity.fromJson(Map<String, dynamic> json) =>
      _$SupervisorEntityFromJson(json);
}
