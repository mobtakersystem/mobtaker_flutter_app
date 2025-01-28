import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:mpm/common/sl_config.dart';
import 'package:mpm/data/entities/machinery/id_value_entity.dart';
import 'package:mpm/data/entities/stop_data/stop_data.dart';

const _space = SizedBox.square(dimension: 16);

class StopFormBuilder extends ConsumerWidget {
  final String name;
  final List<IdValueEntity> data;
  final FormFieldValidator<List<StopDataEntity>>? validator;
  final List<StopDataEntity>? initialValue;

  const StopFormBuilder(
      {super.key,
      required this.name,
      required this.data,
      this.validator,
      this.initialValue});

  @override
  Widget build(BuildContext context, ref) {
    return FormBuilderField<List<StopDataEntity>>(
        key: GlobalKey(),
        initialValue: initialValue ??
            [
              StopDataEntity(
                id: GetIt.I<LocalID>(),
              )
            ],
        valueTransformer: (value) =>
            value?.map((element) => element.toJson()).toList(),
        validator: validator,
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
                          DropdownButtonFormField<IdValueEntity>(
                            key: ValueKey("${e.id}_name"),
                            value: data.firstWhereOrNull(
                              (element) => element.id.toString() == e.reason,
                            ),
                            decoration: const InputDecoration(
                              labelText: 'دلیل توقف',
                            ),
                            onChanged: (stopReason) {
                              final index = field.value?.indexOf(e) ?? 0;
                              final newValue = [...?field.value];
                              newValue[index] = e.copyWith(
                                reason: stopReason?.id.toString(),
                                displayReason: stopReason?.title,
                              );
                              field.didChange(newValue);
                            },
                            items: data
                                .map(
                                  (item) => DropdownMenuItem(
                                    value: item,
                                    child: Text(item.title),
                                  ),
                                )
                                .toList(),
                            validator: FormBuilderValidators.required(),
                          ),
                          _space,
                          Row(
                            children: [
                              Expanded(
                                child: FormBuilderDateTimePicker(
                                  key: ValueKey("${e.id}_start"),
                                  decoration: const InputDecoration(
                                      labelText: 'از ساعت'),
                                  onChanged: (value) {
                                    if (value == null) return;
                                    final index = field.value?.indexOf(e) ?? 0;
                                    final newValue = field.value;
                                    newValue?[index] = e.copyWith(
                                        start: DateFormat.Hms().format(value));
                                    field.didChange(newValue);
                                  },
                                  format: DateFormat.Hm(),
                                  keyboardType: TextInputType.datetime,
                                  timePickerInitialEntryMode:
                                      TimePickerEntryMode.dial,
                                  inputType: InputType.time,
                                  validator: FormBuilderValidators.required(),
                                  // initialValue: e.start != null
                                  //     ? DateTime.parse(e.start!)
                                  //     : null,
                                  name: '"${e.id}_start"',
                                  valueTransformer: (value) => value != null
                                      ? DateFormat.Hms().format(value)
                                      : null,
                                  initialValue: DateFormat("Hms").tryParse(e.start??""),
                                ),
                              ),
                              _space,
                              Expanded(
                                child: FormBuilderDateTimePicker(
                                  key: ValueKey("${e.id}_end"),
                                  name: "${e.id}_end",
                                  initialValue: DateFormat("Hms").tryParse(e.end??""),
                                  onChanged: (value) {
                                    if (value == null) return;
                                    final index = field.value?.indexOf(e) ?? 0;
                                    final newValue = field.value;
                                    newValue?[index] = e.copyWith(
                                        end: DateFormat.Hms().format(value));
                                    field.didChange(newValue);
                                  },
                                  timePickerInitialEntryMode:
                                      TimePickerEntryMode.dial,
                                  inputType: InputType.time,
                                  format: DateFormat.Hm(),
                                  decoration: const InputDecoration(
                                      labelText: 'تا ساعت'),
                                  keyboardType: TextInputType.datetime,
                                  validator: FormBuilderValidators.required(),
                                ),
                              ),
                            ],
                          ),
                          _space,
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  key: ValueKey("${e.id}_description"),
                                  initialValue: e.description,
                                  onChanged: (value) {
                                    final index = field.value?.indexOf(e) ?? 0;
                                    final newValue = field.value;
                                    newValue?[index] =
                                        e.copyWith(description: value);
                                    field.didChange(newValue);
                                  },
                                  decoration: const InputDecoration(
                                      labelText: 'توضیحات توقف'),
                                ),
                              ),
                              Column(
                                children: [
                                  if ((field.value?.length ?? 0) > 1)
                                    IconButton(
                                      onPressed: () {
                                        field.didChange(field.value
                                            ?.where((element) => element != e)
                                            .toList());
                                      },
                                      icon: const Icon(
                                        Icons.remove_circle_outline,
                                      ),
                                    ),
                                  if (field.value?.last == e)
                                    IconButton(
                                        onPressed: () {
                                          field.didChange([
                                            ...?field.value,
                                            StopDataEntity(
                                                id: GetIt.I<LocalID>())
                                          ]);
                                        },
                                        icon: const Icon(
                                            Icons.add_circle_outline)),
                                ],
                              )
                            ],
                          ),
                          _space,
                          const Divider(),
                          _space,
                        ],
                      );
                    })
                  ],
                ),
              ),
            ],
          );
        },
        name: name);
  }
}
