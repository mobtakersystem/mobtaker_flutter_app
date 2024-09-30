import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mpm/data/entities/document/document_entity.dart';
import 'package:mpm/presentation/project_data_show/storage_item_image_widget.dart';

class ImagesViewerPage extends StatelessWidget {
  final List<String>? imagesPath;
  final List<DocumentEntity>? imagesDocs;

  const ImagesViewerPage({super.key, this.imagesPath, this.imagesDocs});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('نمایش تصاویر'),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: imagesPath?.length ?? imagesDocs?.length ?? 0,
          itemBuilder: (context, index) {
            bool isLocal = imagesDocs?[index].isLocal() ?? false;
            return SizedBox(
              height: 300,
              width: double.infinity,
              child: isLocal
                  ? Image.file(File(imagesDocs![index].path!))
                  : StorageItemImageWidget(
                      fileName: imagesPath?[index] ??
                          imagesDocs?[index].fileName ??
                          "",
                    ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox.square(dimension: 16);
          }),
    );
  }
}
