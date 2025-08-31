import 'package:get_it/get_it.dart';
import 'package:mpm/data/entities/user/user_entity.dart';
import 'package:mpm/domain/failure_model.dart';
import 'package:mpm/domain/repository/auth/auth_interface.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_profile_provider.g.dart';

@riverpod
class UserProfile extends _$UserProfile {
  @override
  FutureOr<ResultData<UserEntity>> build() async {
    return GetIt.I<AuthRepository>().getUserInfo();
  }
}