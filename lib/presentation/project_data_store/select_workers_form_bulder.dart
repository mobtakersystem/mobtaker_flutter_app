import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/extention/context.dart';
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
    final initIds = initialValue?.map((e) => e.id).toList();
    final findWorkers = workersData
        .where((element) => initIds?.contains(element.id) ?? false)
        .toList();
    return FormBuilderField<List<WorkerEntity>>(
      name: name,
      initialValue: findWorkers,
      validator: validator,
      valueTransformer: valueTransformer,
      builder: (field) {
        return DropdownButtonFormField2<WorkerEntity>(
          isExpanded: true,
          decoration: InputDecoration(
            labelText: (field.value?.isEmpty ?? true) ? null : label,
            hintText: label,
            errorText: field.errorText,
          ),
          selectedItemBuilder: (context) {
            return workersData.map(
              (item) {
                return Container(
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    field.value!
                        .map(
                          (e) => e.fullName,
                        )
                        .join(', '),
                    style: const TextStyle(
                      fontSize: 14,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 1,
                  ),
                );
              },
            ).toList();
          },
          onChanged: (value) {},
          value: (field.value?.isEmpty ?? true) ? null : field.value!.last,
          items: workersData
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  enabled: false,
                  child: StatefulBuilder(builder: (context, menuState) {
                    return InkWell(
                      onTap: () {
                        if (field.value?.contains(e) ?? false) {
                          field.didChange(field.value
                              ?.where((element) => element != e)
                              .toList());
                        } else {
                          field.didChange([...?field.value, e]);
                        }
                        menuState(() {});
                      },
                      child: Row(
                        children: [
                          (field.value?.contains(e) ?? false)
                              ? Icon(
                                  Icons.check_circle_outline,
                                  color: context.primaryColor,
                                  size: 20,
                                )
                              : const Icon(
                                  Icons.circle_outlined,
                                  size: 20,
                                ),
                          const SizedBox(width: 8),
                          Expanded(child: Text(e.fullName)),
                        ],
                      ),
                    );
                  }),
                ),
              )
              .toList(),
        );
      },
    );
  }
}
