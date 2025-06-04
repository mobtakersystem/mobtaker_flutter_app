import 'package:auto_route/annotations.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/riverpod_helper.dart';
import 'package:mpm/common/widget/form_date_picker.dart';
import 'package:mpm/common/widget/image_picker_form_widget.dart';
import 'package:mpm/data/entities/document/document_entity.dart';
import 'package:mpm/data/entities/project/project_data_entity.dart';
import 'package:mpm/data/entities/worker/worker_entity.dart';
import 'package:mpm/domain/use_case/project_update.dart';
import 'package:mpm/presentation/project_data/project_property_provider.dart';
import 'package:mpm/presentation/project_data_store/machinery_part_consumes_form_builder.dart';
import 'package:mpm/presentation/project_data_store/machinery_service_form_builder.dart';
import 'package:mpm/presentation/project_data_store/select_workers_form_bulder.dart';
import 'package:mpm/presentation/project_data_store/stop_form_builder.dart';

const _space = SizedBox.square(dimension: 16);
@RoutePage()
class ProjectDataEditPage extends ConsumerStatefulWidget {
  final String projectId;
  final ProjectDataEntity projectDataEntity;

  const ProjectDataEditPage({
    super.key,
    required this.projectId,
    required this.projectDataEntity,
  });

  @override
  ConsumerState createState() => _ProjectDataStorePageState();
}

class _ProjectDataStorePageState extends ConsumerState<ProjectDataEditPage> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {});
    });
  }

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
                initialValue: {
                  ...widget.projectDataEntity.toJson()
                    ..removeWhere(
                      (key, value) => key == "images",
                    ),
                  "hasStop": widget.projectDataEntity.stops.isNotEmpty,
                  "hasMachineryPartConsumes":
                      widget.projectDataEntity.machineryPartConsumes.isNotEmpty,
                  "hasMachineryServices":
                      widget.projectDataEntity.machineryServices.isNotEmpty,
                },
                child: Builder(builder: (context) {
                  return Column(
                    children: [
                      PersianFormDatePicker(
                        name: 'date',
                        label: "تاریخ",
                        initialValue: widget.projectDataEntity.date,
                        valueTransformer: (value) => value?.toIso8601String(),
                        validator: FormBuilderValidators.required(),
                      ),
                      _space,
                      FormBuilderDropdown<String>(
                        name: 'indicator_id',
                        decoration: const InputDecoration(labelText: 'شاخص'),
                        initialValue: properties.indicators.any(
                          (element) =>
                              element.id ==
                              widget.projectDataEntity.indicatorId,
                        )
                            ? widget.projectDataEntity.indicatorId
                            : properties.indicators.first.id,
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
                        initialValue: properties.supervisors.any(
                          (element) =>
                              element.id ==
                              widget.projectDataEntity.supervisorId,
                        )
                            ? widget.projectDataEntity.supervisorId
                            : properties.supervisors.first.id,
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
                        initialValue: properties.headDiggers.any(
                          (element) =>
                              element.id ==
                              widget.projectDataEntity.headDiggerId,
                        )
                            ? widget.projectDataEntity.headDiggerId
                            : properties.headDiggers.first.id,
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
                        initialValue: properties.machineries.any(
                          (element) =>
                              element.id ==
                              widget.projectDataEntity.machineryId,
                        )
                            ? widget.projectDataEntity.machineryId
                            : properties.machineries.first.id,
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
                        initialValue: properties.diggers.any(
                          (element) =>
                              element.id == widget.projectDataEntity.diggerId,
                        )
                            ? widget.projectDataEntity.diggerId
                            : properties.diggers.first.id,
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
                        initialValue: widget.projectDataEntity.workers
                            .map(
                              (e) => WorkerEntity(
                                id: e.id,
                                fullName: e.name,
                              ),
                            )
                            .toList(),
                        label: 'کارگران',
                        validator: FormBuilderValidators.required(),
                        valueTransformer: (value) {
                          final test = value
                              ?.map<Map<String, dynamic>>(
                                (item) => {
                                  "id": item.id,
                                  "name": item.fullName,
                                },
                              )
                              .toList();
                          return test;
                        },
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
                              initialValue: widget
                                  .projectDataEntity.initialMeter
                                  .toString(),
                              validator: FormBuilderValidators.required(),
                              valueTransformer: (value) =>
                                  double.tryParse(value!),
                            ),
                          ),
                          _space,
                          Expanded(
                            child: FormBuilderTextField(
                              name: 'final_meter',
                              initialValue: widget.projectDataEntity.finalMeter
                                  .toString(),
                              decoration: const InputDecoration(
                                  labelText: 'متراژ نهایی'),
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
                            child: FormBuilderTextField(
                              name: 'machinery_working_hour',
                              decoration: const InputDecoration(
                                  labelText: 'ساعت کاری ماشین'),
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              keyboardType: TextInputType.number,
                              validator: FormBuilderValidators.required(),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: ImagePickerFormWidget(
                              label: 'تصویر کارکرد ماشین',
                              name: 'localMachineryWorkingHourImage',
                              singlePicker: true,
                              initialValue: widget.projectDataEntity
                                          .machineryWorkingHourImage !=
                                      null
                                  ? [
                                      DocumentEntity(
                                        id: widget.projectDataEntity
                                            .machineryWorkingHourImage!
                                            .split(".")
                                            .first,
                                        mimeType: widget.projectDataEntity
                                            .machineryWorkingHourImage!
                                            .split(".")
                                            .last,
                                        documentableId: widget.projectDataEntity
                                            .machineryWorkingHourImage!
                                            .split(".")
                                            .first,
                                      )
                                    ]
                                  : null,
                              valueTransformer: (value) {
                                print("TRANSFORMER: $value");
                                print("TRANSFORMER: ${value?.isEmpty ?? true}");
                                final res = ((value?.isEmpty ?? true)
                                    ? null
                                    : value?.firstOrNull?.toJson());
                                return res;
                              },
                            ),
                          )
                        ],
                      ),
                      _space,
                      ImagePickerFormWidget(
                        name: 'images',
                        initialValue: widget.projectDataEntity.images,
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
                          initialValue: widget
                                  .projectDataEntity.stopImage.isNotEmpty
                              ? [
                                  DocumentEntity(
                                    id: widget.projectDataEntity.stopImage
                                        .split(".")
                                        .first,
                                    mimeType: widget.projectDataEntity.stopImage
                                        .split(".")
                                        .last,
                                    documentableId: widget
                                        .projectDataEntity.stopImage
                                        .split(".")
                                        .first,
                                  )
                                ]
                              : null,
                          singlePicker: true,
                          valueTransformer: (value) =>
                              value?.firstOrNull?.toJson(),
                        ),
                        StopFormBuilder(
                          name: 'stops',
                          data: properties.stopReasons,
                          initialValue: widget.projectDataEntity.stops.isEmpty
                              ? null
                              : widget.projectDataEntity.stops,
                          validator: FormBuilderValidators.required(),
                        ),
                      ],
                      FormBuilderSwitch(
                        name: 'hasMachineryPartConsumes',
                        initialValue: widget
                            .projectDataEntity.machineryPartConsumes.isNotEmpty,
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
                          initialValue: widget.projectDataEntity
                                  .machineryPartConsumes.isEmpty
                              ? null
                              : widget.projectDataEntity.machineryPartConsumes,
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
                            _formKey.currentState?.removeInternalFieldValue(
                                'machinery_services');
                          }
                        },
                        valueTransformer: (value) => value ?? false,
                      ),
                      if (_formKey.currentState?.fields['hasMachineryServices']
                              ?.value ??
                          false)
                        MachineryServiceFormBuilder(
                            name: 'machinery_services',
                            initialValue: widget
                                    .projectDataEntity.machineryServices.isEmpty
                                ? null
                                : widget.projectDataEntity.machineryServices,
                            projectId: widget.projectId),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 40),
                        ),
                        onPressed: () {
                          if (_formKey.currentState?.saveAndValidate() ??
                              false) {
                            final map = {...?_formKey.currentState?.value};
                            map['id'] = widget.projectDataEntity.id;
                            map['project_id'] = widget.projectId;
                            print('localMachineryWorkingHourImage');
                            print(map['localMachineryWorkingHourImage']
                                .runtimeType);
                            if (map['localMachineryWorkingHourImage']
                                    is List<DocumentEntity> &&
                                (map['localMachineryWorkingHourImage']
                                        as List<DocumentEntity>)
                                    .isEmpty) {
                              map['localMachineryWorkingHourImage'] = null;
                            }
                            List<DocumentEntity> imageTemps = map['images']
                                .map<DocumentEntity>(
                                    ((item) => DocumentEntity.fromJson(item)))
                                .toList();
                            List<String> deletedImages = [];
                            deletedImages.addAll(widget.projectDataEntity.images
                                .where(
                                  (element) => !imageTemps.contains(element),
                                )
                                .map(
                                  (item) => item.id,
                                )
                                .toList());

                            print("deletedImages");
                            print(deletedImages.join(" , "));

                            // print(imageTemps);
                            print("STOP II");
                            print(map['stopsImage']);

                            map.remove('images');
                            map['image'] = imageTemps
                                .where(
                                  (element) => !widget.projectDataEntity.images
                                      .contains(element),
                                )
                                .map(
                                  (e) => e.toJson(),
                                )
                                .toList();

                            ///
                            // List<MachineryPartDataEntity> tempPartConsumer =
                            //     map['machinery_part_consumes']
                            //         .map<MachineryPartDataEntity>(((item) =>
                            //             MachineryPartDataEntity.fromJson(item)))
                            //         .toList();
                            // for (final item in widget
                            //     .projectDataEntity.machineryPartConsumes) {
                            //   final res = tempPartConsumer.firstWhereOrNull(
                            //     (element) => element.id == item.id,
                            //   );
                            //   if (res == null) {
                            //     deletedImages.addAll(item.images.map(
                            //       (e) => e.id,
                            //     ));
                            //   }
                            // }
                            // print("IIII");
                            // for(final ii in tempPartConsumer){
                            //   print(ii.images);
                            // }
                            final data =
                                ProjectDataEntity.fromJson(map).copyWith(
                              syncStatus: DataSyncStatus.pending,
                              syncType: DataSyncType.update,
                              status: widget.projectDataEntity.status,
                              user: widget.projectDataEntity.user,
                              userId: widget.projectDataEntity.userId,
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
                              updatedDeletedImages: deletedImages,
                              createdAt: DateTime.now(),
                              updatedAt: DateTime.now(),
                            );
                            GetIt.I<UpdateProjectDataInLocalUseCase>()
                                .call(data: data)
                                .then(
                              (value) {
                                value.fold(
                                  (l) {
                                    context.showErrorMessage(l);
                                  },
                                  (r) {
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                );
                              },
                            );
                          }
                        },
                        child: const Text("ثبت"),
                      )
                    ],
                  );
                })),
          );
        },
        tryAgain: () {
          ref.invalidate(getProjectPropertyProvider(widget.projectId));
        },
      ),
    );
  }
}
