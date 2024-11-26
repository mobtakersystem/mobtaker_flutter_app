import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/data/entities/worker/worker_entity.dart';
import 'package:mpm/presentation/project_data/project_property_provider.dart';

class SelectWorkersFormBuilder extends ConsumerWidget {
  final String name;
  final String label;
  final String projectId;
  final List<WorkerEntity>? initialValue;
  final FormFieldValidator<List<WorkerEntity>>? validator;
  final ValueTransformer<List<WorkerEntity>?>? valueTransformer;

  const SelectWorkersFormBuilder({
    super.key,
    required this.name,
    required this.projectId,
    required this.label,
    this.initialValue,
    this.validator,
    this.valueTransformer,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<WorkerEntity> workersData =
        ref.watch(getProjectPropertyProvider(projectId)).maybeWhen(
              orElse: () => [],
              data: (data) => data.getRight().toNullable()?.workers ?? [],
            );
    return FormBuilderField<List<WorkerEntity>>(
      name: name,
      initialValue: initialValue,
      validator: validator,
      valueTransformer: valueTransformer,
      builder: (field) {
        return DropdownButtonFormField<WorkerEntity>(
          value: null,
          decoration: InputDecoration(
            labelText: (field.value?.isEmpty ?? true) ? null : label,
            hintText: label,
            errorText: field.errorText,
          ),
          onChanged: (value) {
            if (value != null) {
              if (field.value?.contains(value) ?? false) {
                field.didChange(
                    field.value?.where((element) => element != value).toList());
              } else {
                field.didChange([...?field.value, value]);
              }
            }
          },
          selectedItemBuilder: (context) {
            final selected = workersData.where(
              (element) => field.value?.contains(element) ?? false,
            );
            return workersData
                .map(
                  (e) => Text(selected.isEmpty
                      ? label
                      : selected
                          .map(
                            (e) => e.fullName,
                          )
                          .join(', ')),
                )
                .toList();
          },
          items: workersData
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Row(
                    children: [
                      Icon(
                        (field.value?.contains(e) ?? false)
                            ? Icons.check_circle_outline
                            : Icons.circle_outlined,
                        size: 20,
                      ),
                      const SizedBox(width: 8),
                      Text(e.fullName),
                    ],
                  ),
                ),
              )
              .toList(),
        );
      },
    );
  }
}
