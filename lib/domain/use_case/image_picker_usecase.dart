import 'package:image_picker/image_picker.dart';

class SingleImagePickerUseCase {
  final ImagePicker picker;

  SingleImagePickerUseCase(this.picker);

  Future<XFile?> pickImage(ImageSource source) async {
    final XFile? image =
        await picker.pickImage(source: source, imageQuality: 60);
    return image;
  }
}

class MultiImagePickerUseCase {
  final ImagePicker picker;

  MultiImagePickerUseCase(this.picker);

  Future<List<XFile>?> pickImages({int limit = 5}) async {
    if (limit == 1) {
      final XFile? image = await picker.pickImage(
        imageQuality: 60,
        source: ImageSource.gallery,
      );
      return image == null ? null : [image];
    }
    final List<XFile> images = await picker.pickMultiImage(
      imageQuality: 60,
      limit: limit,
    );
    return images;
  }
}
