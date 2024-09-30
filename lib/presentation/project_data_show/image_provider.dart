import 'package:get_it/get_it.dart';
import 'package:mpm/domain/use_case/get_storage_image_link.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:mpm/domain/failure_model.dart';

part 'image_provider.g.dart';

@riverpod
class GetImageLink extends _$GetImageLink {
  @override
  FutureOr<ResultData<String>> build(String fileName) async {
    return GetIt.I<GetStorageImageLinkUseCase>().call(fileName);
  }
}
