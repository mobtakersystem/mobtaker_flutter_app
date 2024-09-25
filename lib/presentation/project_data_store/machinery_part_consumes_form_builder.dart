import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/sl_config.dart';
import 'package:mpm/common/widget/image_picker_form_widget.dart';
import 'package:mpm/data/entities/machinery/machinery_part_data_entity.dart';
import 'package:mpm/data/entities/machinery/machinery_part_entity.dart';
import 'package:mpm/presentation/project_data/project_property_provider.dart';

const _space = SizedBox.square(dimension: 16);

class MachineryPartConsumesFormBuilder extends ConsumerWidget {
  final String name;
  final String projectId;

  final FormFieldValidator<List<MachineryPartDataEntity>>? validator;
  final List<MachineryPartDataEntity>? initialValue;

  const MachineryPartConsumesFormBuilder(
      {super.key,
      required this.name,
      required this.projectId,
      this.validator,
      this.initialValue});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<MachineryPartEntity> data = ref
        .watch(getProjectPropertyProvider(projectId))
        .maybeWhen(
          orElse: () => [],
          data: (data) => data.getRight().toNullable()?.machineryParts ?? [],
        );
    return FormBuilderField<List<MachineryPartDataEntity>>(
      name: name,
      initialValue: initialValue ??
          [
            MachineryPartDataEntity(
              id: GetIt.I<LocalID>(),
              projectId: projectId,
            )
          ],
      validator: validator,
      valueTransformer: (value) =>
          value?.map((element) => element.toJson()).toList(),
      builder: (field) {
        return Column(
          children: [
            InputDecorator(
              decoration:
                  GetIt.I<InputDecoration>(instanceName: 'noBorder').copyWith(
                errorText: field.errorText,
              ),
              child: Column(
                children: [
                  ...?(field.value)?.map((e) {
                    return Column(
                      key: ValueKey(e.id),
                      children: [
                        DropdownButtonFormField<String>(
                          key: ValueKey("${e.id}_partId"),
                          value: e.partId,
                          decoration: const InputDecoration(
                            labelText: 'قطعه',
                          ),
                          onChanged: (value) {
                            if (value != null) {
                              final index = field.value?.indexOf(e) ?? 0;
                              final newValue = field.value;
                              newValue?[index] = e.copyWith(partId: value);
                              field.didChange(newValue);
                            }
                          },
                          items: data
                              .map(
                                (e) => DropdownMenuItem<String>(
                                  value: e.id,
                                  child: Text(e.name),
                                ),
                              )
                              .toList(),
                          validator: FormBuilderValidators.required(),
                        ),
                        _space,
                        TextFormField(
                          key: ValueKey("${e.id}_description"),
                          decoration: const InputDecoration(
                            labelText: 'توضیحات',
                          ),
                          initialValue: e.description,
                          onChanged: (value) {
                            final index = field.value?.indexOf(e) ?? 0;
                            final newValue = field.value;
                            newValue?[index] = e.copyWith(description: value);
                            field.didChange(newValue);
                          },
                        ),
                        _space,
                        Row(
                          children: [
                            Expanded(
                              child: ImagePickerFormWidget(
                                name: 'images${e.id}',
                                singlePicker: true,
                                onChanged: (value) {
                                  final index = field.value?.indexOf(e) ?? 0;
                                  final newValue = field.value;
                                  newValue?[index] =
                                      e.copyWith(images: value ?? []);
                                  field.didChange(newValue);
                                },
                              ),
                            ),
                            if ((field.value?.length ?? 0) > 1)
                              IconButton(
                                onPressed: () {
                                  field.didChange(
                                    field.value
                                      ?..removeWhere(
                                          (element) => element.id == e.id),
                                  );
                                },
                                icon: const Icon(Icons.remove_circle_outline),
                              ),
                            if (field.value?.last == e)
                              IconButton(
                                onPressed: () {
                                  field.didChange([
                                    ...?field.value,
                                    MachineryPartDataEntity(
                                      id: GetIt.I<LocalID>(),
                                      projectId: projectId,
                                    )
                                  ]);
                                },
                                icon: const Icon(Icons.add_circle_outline),
                              ),
                          ],
                        ),
                        _space,
                        const Divider(),
                        _space,
                      ],
                    );
                  }),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
