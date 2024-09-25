import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/riverpod_helper.dart';
import 'package:mpm/common/sl_config.dart';
import 'package:mpm/common/widget/form_date_picker.dart';
import 'package:mpm/common/widget/image_picker_form_widget.dart';
import 'package:mpm/data/entities/project/project_data_entity.dart';
import 'package:mpm/domain/use_case/project_store.dart';
import 'package:mpm/presentation/project_data/project_property_provider.dart';
import 'package:mpm/presentation/project_data_store/machinery_part_consumes_form_builder.dart';
import 'package:mpm/presentation/project_data_store/machinery_service_form_builder.dart';
import 'package:mpm/presentation/project_data_store/select_workers_form_bulder.dart';
import 'package:mpm/presentation/project_data_store/stop_form_builder.dart';

const _space = SizedBox.square(dimension: 16);

class ProjectDataStorePage extends ConsumerStatefulWidget {
  final String projectId;

  const ProjectDataStorePage({super.key, required this.projectId});

  @override
  ConsumerState createState() => _ProjectDataStorePageState();
}

class _ProjectDataStorePageState extends ConsumerState<ProjectDataStorePage> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("افزودن عملکرد"),
      ),
      body: RiverPodConnectionHelperWidget(
        value: ref.watch(getProjectPropertyProvider(widget.projectId)),
        successBuilder: (properties) {
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: FormBuilder(
                key: _formKey,
                child: Column(
                  children: [
                    PersianFormDatePicker(
                      name: 'date',
                      label: "تاریخ",
                      valueTransformer: (value) => value?.toIso8601String(),
                      validator: FormBuilderValidators.required(),
                    ),
                    _space,
                    FormBuilderDropdown<String>(
                      name: 'indicator_id',
                      decoration: const InputDecoration(labelText: 'شاخص'),
                      items: properties.indicators
                          .map(
                            (e) => DropdownMenuItem<String>(
                              value: e.id,
                              child: Text(e.displayName),
                            ),
                          )
                          .toList(),
                      validator: FormBuilderValidators.required(),
                    ),
                    _space,
                    FormBuilderDropdown<String>(
                      name: 'supervisor_id',
                      decoration: const InputDecoration(labelText: 'سرپرست'),
                      items: properties.supervisors
                          .map(
                            (e) => DropdownMenuItem<String>(
                              value: e.id,
                              child: Text(e.fullName),
                            ),
                          )
                          .toList(),
                      validator: FormBuilderValidators.required(),
                    ),
                    _space,
                    FormBuilderDropdown<String>(
                      name: 'head_digger_id',
                      decoration: const InputDecoration(labelText: 'سر حفار'),
                      items: properties.headDiggers
                          .map(
                            (e) => DropdownMenuItem<String>(
                              value: e.id,
                              child: Text(e.fullName),
                            ),
                          )
                          .toList(),
                      validator: FormBuilderValidators.required(),
                    ),
                    _space,
                    FormBuilderDropdown<String>(
                      name: 'machinery_id',
                      decoration:
                          const InputDecoration(labelText: 'ماشین‌آلات'),
                      items: properties.machineries
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
                    FormBuilderDropdown<String>(
                      name: 'shift',
                      decoration: const InputDecoration(labelText: 'شیفت'),
                      items: ShiftStatus.values
                          .map(
                            (e) => DropdownMenuItem<String>(
                              value: e.name,
                              child: Text(e.getName()),
                            ),
                          )
                          .toList(),
                      validator: FormBuilderValidators.required(),
                    ),
                    _space,
                    FormBuilderDropdown<String>(
                      name: 'digger_id',
                      decoration: const InputDecoration(labelText: 'حفار'),
                      items: properties.diggers
                          .map(
                            (e) => DropdownMenuItem<String>(
                              value: e.id,
                              child: Text(e.fullName),
                            ),
                          )
                          .toList(),
                      validator: FormBuilderValidators.required(),
                    ),
                    _space,
                    SelectWorkersFormBuilder(
                      name: 'workers',
                      projectId: widget.projectId,
                      label: 'کارگران',
                      validator: FormBuilderValidators.required(),
                    ),
                    _space,
                    Row(
                      children: [
                        Expanded(
                          child: FormBuilderTextField(
                            name: 'initial_meter',
                            decoration: const InputDecoration(
                                labelText: 'متراژ ابتدایی'),
                            keyboardType: TextInputType.number,
                            validator: FormBuilderValidators.required(),
                            valueTransformer: (value) =>
                                double.tryParse(value!),
                          ),
                        ),
                        _space,
                        Expanded(
                          child: FormBuilderTextField(
                            name: 'final_meter',
                            decoration:
                                const InputDecoration(labelText: 'متراژ نهایی'),
                            keyboardType: TextInputType.number,
                            validator: FormBuilderValidators.required(),
                            valueTransformer: (value) =>
                                double.tryParse(value!),
                          ),
                        ),
                      ],
                    ),
                    _space,
                    FormBuilderTextField(
                      name: 'description',
                      decoration: const InputDecoration(labelText: 'توضیحات'),
                    ),
                    _space,
                    Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: FormBuilderDateTimePicker(
                            name: 'machinery_working_hour',
                            //todo convert initial value
                            decoration: const InputDecoration(
                                labelText: 'ساعت کاری ماشین'),
                            timePickerInitialEntryMode:
                                TimePickerEntryMode.dial,
                            inputType: InputType.time,
                            keyboardType: TextInputType.number,
                            validator: FormBuilderValidators.required(),
                            valueTransformer: (value) => value != null
                                ? DateFormat.Hms().format(value)
                                : null,
                          ),
                        ),
                        //todo add machinery working hour image
                        Expanded(
                          flex: 3,
                          child: ImagePickerFormWidget(
                            label: 'تصویر کارکرد ماشین',
                            name: 'machinery_working_hour_image',
                            singlePicker: true,
                            valueTransformer: (value) =>
                                value?.firstOrNull?.toJson(),
                          ),
                        )
                      ],
                    ),
                    _space,
                    ImagePickerFormWidget(
                      name: 'images',
                      label: 'تصاویر دیگر',
                      valueTransformer: (value) =>
                          value?.map((e) => e.toJson()).toList(),
                    ),
                    FormBuilderSwitch(
                      name: 'hasStop',
                      title: const Text("توقف دارد"),
                      decoration:
                          GetIt.I<InputDecoration>(instanceName: 'noBorder'),
                      onChanged: (value) {
                        setState(() {});
                      },
                      onSaved: (value) {
                        if (!(value ?? false)) {
                          _formKey.currentState
                              ?.removeInternalFieldValue('stops');
                        }
                      },
                      valueTransformer: (value) => value ?? false,
                    ),
                    _space,
                    if (_formKey.currentState?.fields['hasStop']?.value ??
                        false) ...[
                      ImagePickerFormWidget(
                        name: 'stopsImage',
                        label: 'تصویر دفترچه توقف',
                        singlePicker: true,
                        valueTransformer: (value) =>
                            value?.firstOrNull?.toJson(),
                      ),
                      StopFormBuilder(
                        name: 'stops',
                        data: properties.stopReasons,
                        validator: FormBuilderValidators.required(),
                      ),
                    ],
                    FormBuilderSwitch(
                      name: 'hasMachineryPartConsumes',
                      decoration:
                          GetIt.I<InputDecoration>(instanceName: 'noBorder'),
                      title: const Text("قطعه مصرفی دارد"),
                      onChanged: (value) {
                        setState(() {});
                      },
                      onSaved: (value) {
                        if (!(value ?? false)) {
                          _formKey.currentState?.removeInternalFieldValue(
                              'machinery_part_consumes');
                        }
                      },
                      valueTransformer: (value) => value ?? false,
                    ),
                    _space,
                    if (_formKey.currentState
                            ?.fields['hasMachineryPartConsumes']?.value ??
                        false)
                      MachineryPartConsumesFormBuilder(
                        name: 'machinery_part_consumes',
                        projectId: widget.projectId,
                        validator: FormBuilderValidators.required(),
                      ),
                    FormBuilderSwitch(
                      name: 'hasMachineryServices',
                      decoration:
                          GetIt.I<InputDecoration>(instanceName: 'noBorder'),
                      title: const Text("سرویس ماشین دارد"),
                      onChanged: (value) {
                        setState(() {});
                      },
                      onSaved: (value) {
                        if (!(value ?? false)) {
                          _formKey.currentState
                              ?.removeInternalFieldValue('machinery_services');
                        }
                      },
                      valueTransformer: (value) => value ?? false,
                    ),
                    if (_formKey.currentState?.fields['hasMachineryServices']
                            ?.value ??
                        false)
                      MachineryServiceFormBuilder(
                          name: 'machinery_services',
                          projectId: widget.projectId),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 40),
                      ),
                      onPressed: () {
                        if (_formKey.currentState?.saveAndValidate() ?? false) {
                          final map = {...?_formKey.currentState?.value};
                          map['id'] = GetIt.I<LocalID>();
                          map['project_id'] = widget.projectId;
                          final data = ProjectDataEntity.fromJson(map).copyWith(
                            syncStatus: DataSyncStatus.pending,
                            headDigger: properties.headDiggers
                                .firstWhere((element) =>
                                    element.id == map['head_digger_id'])
                                .fullName,
                            digger: properties.diggers
                                .firstWhere(
                                  (element) => element.id == map['digger_id'],
                                )
                                .fullName,
                            machinery: properties.machineries
                                .firstWhere(
                                  (element) =>
                                      element.id == map['machinery_id'],
                                )
                                .name,
                            createdAt: DateTime.now(),
                            updatedAt: DateTime.now(),
                          );

                          GetIt.I<StoreProjectDataInLocalUseCase>()
                              .call(data: data)
                              .then(
                            (value) {
                              value.fold(
                                (l) {
                                  context.showErrorMessage(l);
                                },
                                (r) {
                                  Navigator.pop(context, true);
                                },
                              );
                            },
                          );
                        }
                      },
                      child: const Text("ثبت"),
                    )
                  ],
                )),
          );
        },
        tryAgain: () {
          ref.invalidate(getProjectPropertyProvider(widget.projectId));
        },
      ),
    );
  }
}
