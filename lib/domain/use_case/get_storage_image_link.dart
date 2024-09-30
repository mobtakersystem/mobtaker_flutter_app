import 'package:mpm/domain/failure_model.dart';

typedef GetStorageImageLinkUseCase = Future<ResultData<String>> Function(
    String fileName);
