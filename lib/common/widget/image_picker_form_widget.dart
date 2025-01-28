import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mpm/common/sl_config.dart';
import 'package:mpm/data/entities/document/document_entity.dart';
import 'package:mpm/domain/use_case/image_picker_usecase.dart';
import 'package:mpm/presentation/project_data_show/storage_item_image_widget.dart';

class ImagePickerFormWidget extends StatelessWidget {
  final String name;
  final String? label;
  final bool singlePicker;
  final FormFieldValidator<List<DocumentEntity>>? validator;
  final List<DocumentEntity>? initialValue;
  final ValueTransformer<List<DocumentEntity>?>? valueTransformer;
  final ValueChanged<List<DocumentEntity>?>? onChanged;

  const ImagePickerFormWidget({
    super.key,
    required this.name,
    this.validator,
    this.valueTransformer,
    this.label,
    this.singlePicker = false,
    this.onChanged,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    print("initialValue:$name");
    print(initialValue);
    return FormBuilderField<List<DocumentEntity>>(
      name: name,
      valueTransformer: valueTransformer,
      validator: validator,
      onChanged: onChanged,
      initialValue: initialValue,
      builder: (FormFieldState<List<DocumentEntity>> field) {
        return InputDecorator(
          decoration:
              GetIt.I<InputDecoration>(instanceName: 'noBorder').copyWith(
            labelText: label,
            errorText: field.errorText,
          ),
          child: Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              if (!singlePicker ||
                  (singlePicker && (field.value?.isEmpty ?? true))) ...[
                IconButton(
                  onPressed: () {
                    GetIt.I<MultiImagePickerUseCase>()
                        .pickImages(limit: singlePicker ? 1 : 5)
                        .then(
                      (value) {
                        if (value != null) {
                          final oldValue = [...?field.value];
                          field.didChange(
                            oldValue
                              ..addAll(
                                value.map(
                                  (e) => DocumentEntity(
                                    id: GetIt.I<LocalID>(),
                                    path: e.path,
                                  ),
                                ),
                              ),
                          );
                        }
                      },
                    );
                  },
                  icon: const Icon(Icons.add_photo_alternate),
                ),
                IconButton(
                  onPressed: () {
                    GetIt.I<SingleImagePickerUseCase>()
                        .pickImage(
                      ImageSource.camera,
                    )
                        .then(
                      (value) {
                        if (value != null) {
                          final oldValue = [...?field.value];
                          field.didChange(
                            oldValue
                              ..add(
                                DocumentEntity(
                                  id: GetIt.I<LocalID>(),
                                  path: value.path,
                                ),
                              ),
                          );
                        }
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.add_a_photo,
                  ),
                ),
              ],
              ...?field.value?.map(
                (e) => Stack(
                  children: [
                    if (e.isLocal())
                      Image.file(
                        File(e.path!),
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    if (e.documentableId != null)
                      StorageItemImageWidget(
                        fileName: e.fileName,
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    Positioned(
                      right: 2,
                      top: 2,
                      child: GestureDetector(
                        onTap: () {
                          final oldValue = [...?field.value];
                          field.didChange(
                            oldValue..remove(e),
                          );
                        },
                        child: const DecoratedBox(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Icon(
                              Icons.close,
                              color: Colors.red,
                              size: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
