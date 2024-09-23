import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/sl_config.dart';
import 'package:mpm/data/entities/machinery/machinery_data_entity.dart';
import 'package:mpm/presentation/project_data/project_property_provider.dart';

const _space = SizedBox.square(dimension: 16);

class MachineryServiceFormBuilder extends ConsumerWidget {
  final String name;
  final String projectId;

  final FormFieldValidator<List<MachineryServiceDataEntity>>? validator;
  final List<MachineryServiceDataEntity>? initialValue;

  const MachineryServiceFormBuilder({
    super.key,
    required this.name,
    required this.projectId,
    this.validator,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Map<String, String> data =
        ref.watch(getProjectPropertyProvider(projectId)).maybeWhen(
              orElse: () => {},
              data: (data) =>
                  data.getRight().toNullable()?.machineryServiceTypes ?? {},
            );
    return FormBuilderField<List<MachineryServiceDataEntity>>(
      name: name,
      initialValue: initialValue ??
          [
            MachineryServiceDataEntity(
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
                          key: ValueKey("${e.id}_type"),
                          value: e.serviceType?.toString(),
                          decoration: const InputDecoration(
                            labelText: 'نوع سرویس',
                          ),
                          onChanged: (value) {
                            if (value != null) {
                              final index = field.value?.indexOf(e) ?? 0;
                              final newValue = field.value;
                              newValue?[index] = e.copyWith(
                                  serviceType: int.tryParse(value),
                                  type: data[value] ?? "");
                              field.didChange(newValue);
                            }
                          },
                          items: data.keys
                              .map(
                                (key) => DropdownMenuItem(
                                  value: key,
                                  child: Text(data[key] ?? ""),
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
                              child: TextButton.icon(
                                style: TextButton.styleFrom(
                                    minimumSize:
                                        const Size(double.maxFinite, 42)),
                                onPressed: () {},
                                label: const Text("افزودن تصویر"),
                                icon: const Icon(Icons.add_photo_alternate),
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
                                    MachineryServiceDataEntity(
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
