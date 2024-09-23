import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

part 'user_entity.g.dart';

typedef UserEntityList = List<UserEntity>;
typedef AuthUser = ({UserEntity userEntity, String token});

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    @Default("") String userName,
    String? userProfileImage,
    @Default("") String userRole,
    @Default("") String userRoleName,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
