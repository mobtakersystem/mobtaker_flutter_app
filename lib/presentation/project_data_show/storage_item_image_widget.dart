import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/widget/loading_widget.dart';
import 'package:mpm/presentation/project_data_show/image_provider.dart';

class StorageItemImageWidget extends ConsumerWidget {
  final String fileName;
  final double? height, width;
  final BoxFit? fit;

  const StorageItemImageWidget({
    super.key,
    required this.fileName,
    this.height,
    this.width,
    this.fit,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageLink = ref.watch(getImageLinkProvider(fileName));
    return SizedBox(
      width: width,
      height: height,
      child: imageLink.when(
        data: (link) => link.fold(
          (l) => IconButton(
            icon: const Icon(Icons.refresh_sharp),
            onPressed: () {
              ref.invalidate(getImageLinkProvider(fileName));
            },
          ),
          (r) => Image.network(
            r,
            fit: fit,
          ),
        ),
        loading: () => const LoadingWidget(),
        error: (error, stackTrace) => Center(
          child: IconButton(
            icon: const Icon(Icons.refresh_sharp),
            onPressed: () {
              ref.invalidate(getImageLinkProvider(fileName));
            },
          ),
        ),
      ),
    );
  }
}
