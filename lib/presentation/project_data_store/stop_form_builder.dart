import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/sl_config.dart';
import 'package:mpm/data/entities/stop_data/stop_data.dart';

const _space = SizedBox.square(dimension: 16);

class StopFormBuilder extends ConsumerWidget {
  final String name;
  final Map<String, String> data;
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
                      print("e.id");
                      print(e.id);
                      print(e.reason);
                      return Column(
                        key: ValueKey(e.id),
                        children: [
                          DropdownButtonFormField<String>(
                            key: ValueKey("${e.id}_name"),
                            value: e.reason,
                            decoration: const InputDecoration(
                              labelText: 'دلیل توقف',
                            ),
                            onChanged: (value) {
                              final index = field.value?.indexOf(e) ?? 0;
                              final newValue = field.value;
                              newValue?[index] = e.copyWith(reason: value,displayReason: data[value] ?? "");
                              field.didChange(newValue);
                            },
                            items: data.keys
                                .map(
                                  (key) => DropdownMenuItem(
                                    key: ValueKey(e.id + key),
                                    value: key,
                                    child: Text(data[key] ?? ""),
                                  ),
                                )
                                .toList(),
                            validator: FormBuilderValidators.required(),
                          ),
                          _space,
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  key: ValueKey("${e.id}_start"),
                                  decoration: const InputDecoration(
                                      labelText: 'از ساعت'),
                                  onChanged: (value) {
                                    final index = field.value?.indexOf(e) ?? 0;
                                    final newValue = field.value;
                                    newValue?[index] = e.copyWith(start: value);
                                    field.didChange(newValue);
                                  },
                                  keyboardType: TextInputType.datetime,
                                  validator: FormBuilderValidators.required(),
                                  initialValue: e.start,
                                ),
                              ),
                              _space,
                              Expanded(
                                child: TextFormField(
                                  key: ValueKey("${e.id}_end"),
                                  onChanged: (value) {
                                    final index = field.value?.indexOf(e) ?? 0;
                                    final newValue = field.value;
                                    newValue?[index] = e.copyWith(end: value);
                                    field.didChange(newValue);
                                  },
                                  decoration: const InputDecoration(
                                      labelText: 'تا ساعت'),
                                  keyboardType: TextInputType.datetime,
                                  validator: FormBuilderValidators.required(),
                                  initialValue: e.end,
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
