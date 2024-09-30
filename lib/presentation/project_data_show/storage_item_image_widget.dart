import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/presentation/project_data_show/image_provider.dart';

class StorageItemImageWidget extends ConsumerWidget {
  final String fileName;

  const StorageItemImageWidget({super.key, required this.fileName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageLink = ref.watch(getImageLinkProvider(fileName));
    return imageLink.when(
      data: (link) => link.fold(
        (l) => IconButton(
          icon: const Icon(Icons.refresh_sharp),
          onPressed: () {
            ref.invalidate(getImageLinkProvider(fileName));
          },
        ),
        (r) => Image.network(r),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(
        child: IconButton(
          icon: const Icon(Icons.refresh_sharp),
          onPressed: () {
            ref.invalidate(getImageLinkProvider(fileName));
          },
        ),
      ),
    );
  }
}
