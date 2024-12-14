import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/riverpod_helper.dart';
import 'package:mpm/data/entities/project/project_data_entity.dart';
import 'package:mpm/presentation/project_data/project_property_provider.dart';
import 'package:mpm/presentation/project_data_show/images_viewer_page.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:collection/collection.dart';

const _dividerSize = 8.0;

class ProjectDataShowPage extends ConsumerWidget {
  final ProjectDataEntity projectData;

  const ProjectDataShowPage({super.key, required this.projectData});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('نمایش داده پروژه'),
      ),
      body: RiverPodConnectionHelperWidget(
        value: ref.watch(getProjectPropertyProvider(projectData.projectId)),
        successBuilder: (properties) {
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              _ItemValue(
                  title: "تاریخ",
                  value: projectData.date?.toPersianDate() ?? "-"),
              const SizedBox.square(dimension: _dividerSize),
              _ItemValue(
                  title: "شاخص",
                  value: properties.indicators
                          .firstWhereOrNull(
                            (element) => element.id == projectData.indicatorId,
                          )
                          ?.displayName ??
                      "-"),
              const SizedBox.square(dimension: _dividerSize),
              _ItemValue(title: "سرپرست", value: projectData.supervisor),
              const SizedBox.square(dimension: _dividerSize),
              _ItemValue(title: "سرحفار", value: projectData.headDigger),
              const SizedBox.square(dimension: _dividerSize),
              _ItemValue(title: "ماشین آلات", value: projectData.machinery),
              const SizedBox.square(dimension: _dividerSize),
              _ItemValue(
                  title: "شیفت",
                  value: ShiftStatus.values
                          .firstWhereOrNull(
                              (element) => element.name == projectData.shift)
                          ?.getName() ??
                      "-"),
              const SizedBox.square(dimension: _dividerSize),
              _ItemValue(title: "حفار", value: projectData.digger),
              const SizedBox.square(dimension: _dividerSize),
              _ItemValue(
                  title: "کارگران",
                  value: projectData.workers
                      .map(
                        (e) => e.name,
                      )
                      .join(", ")),
              const SizedBox.square(dimension: _dividerSize),
              Row(children: [
                Expanded(
                  child: _ItemValue(
                    title: "متراژ ابتدایی",
                    value: projectData.initialMeter.toString(),
                  ),
                ),
                Expanded(
                  child: _ItemValue(
                    title: "متراژ نهایی",
                    value: projectData.finalMeter.toString(),
                  ),
                ),
              ]),
              if (projectData.description.isNotEmpty) ...[
                const SizedBox.square(dimension: _dividerSize),
                _ItemValue(
                  title: 'توضیحات',
                  value: projectData.description,
                  valueStyle: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
              const SizedBox.square(dimension: _dividerSize),
              Row(
                children: [
                  Expanded(
                    child: _ItemValue(
                      title: 'ساعت کارکرد ماشین',
                      value: projectData.machineryWorkingHour,
                      valueStyle: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  if (projectData.machineryWorkingHourImage?.isNotEmpty ??
                      false)
                    TextButton.icon(
                      onPressed: () {
                        context.push(ImagesViewerPage(
                          imagesPath: [projectData.machineryWorkingHourImage!],
                        ));
                      },
                      label: const Text("مشاهده تصویر"),
                      icon: const Icon(Icons.image),
                    ),
                  if (projectData.localMachineryWorkingHourImage != null)
                    TextButton.icon(
                      onPressed: () {
                        context.push(ImagesViewerPage(
                          imagesDocs: [
                            projectData.localMachineryWorkingHourImage!
                          ],
                        ));
                      },
                      label: const Text("مشاهده تصویر"),
                      icon: const Icon(Icons.image),
                    ),
                ],
              ),
              if (projectData.images.isNotEmpty) ...[
                const SizedBox.square(dimension: _dividerSize),
                TextButton.icon(
                  onPressed: () {
                    context.push(ImagesViewerPage(
                      imagesDocs: projectData.images,
                    ));
                  },
                  label: Text("مشاهده تصاویر(${projectData.images.length})"),
                  icon: const Icon(Icons.image),
                ),
              ],
              if (projectData.stops.isNotEmpty) ...[
                const Divider(),
                if (projectData.stopImage.isNotEmpty)
                  TextButton.icon(
                    onPressed: () {
                      context.push(
                        ImagesViewerPage(
                          imagesPath: [projectData.stopImage],
                        ),
                      );
                    },
                    label: const Text("مشاهده تصویر دفترچه توقف"),
                    icon: const Icon(Icons.image),
                  ),
                if (projectData.stopsImage != null)
                  TextButton.icon(
                    onPressed: () {
                      context.push(
                        ImagesViewerPage(
                          imagesDocs: [projectData.stopsImage!],
                        ),
                      );
                    },
                    label: const Text("مشاهده تصویر دفترچه توقف"),
                    icon: const Icon(Icons.image),
                  ),
                const SizedBox(height: 8),
                ...projectData.stops.map(
                  (e) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _ItemValue(
                          title: "دلیل توقف", value: e.displayReason ?? "-"),
                      const SizedBox.square(dimension: _dividerSize),
                      _ItemValue(
                          title: "از ساعت: ", value: "${e.start} تا ${e.end}"),
                      const SizedBox.square(dimension: _dividerSize),
                      Text("توضیحات: ${e.description ?? "-"}"),
                      const SizedBox.square(dimension: _dividerSize),
                    ],
                  ),
                ),
              ],
              if (projectData.machineryPartConsumes.isNotEmpty) ...[
                const Divider(),
                Text("قطعات مصرفی", style: context.textTheme.titleMedium),
                const SizedBox(height: 8),
                ...projectData.machineryPartConsumes.map(
                  (e) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _ItemValue(title: "نام قطعه: ", value: e.part),
                      const SizedBox.square(dimension: _dividerSize),
                      _ItemValue(
                          title: "توضیحات: ", value: e.description ?? "-"),
                      const SizedBox.square(dimension: _dividerSize),
                      if (e.images.isNotEmpty)
                        Center(
                          child: TextButton.icon(
                            onPressed: () {
                              context
                                  .push(ImagesViewerPage(imagesDocs: e.images));
                            },
                            label: const Text("مشاهده تصویر"),
                            icon: const Icon(Icons.image),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
              if (projectData.machineryServices.isNotEmpty) ...[
                const Divider(),
                Text("خدمات ماشین آلات", style: context.textTheme.titleMedium),
                const SizedBox.square(dimension: _dividerSize),
                ...projectData.machineryServices.map(
                  (e) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _ItemValue(title: "نوع سرویس", value: e.type ?? "-"),
                      const SizedBox.square(dimension: _dividerSize),
                      _ItemValue(title: "توضیحات", value: e.description ?? "-"),
                      const SizedBox.square(dimension: _dividerSize),
                      if (e.images.isNotEmpty)
                        Center(
                          child: TextButton.icon(
                            onPressed: () {
                              context
                                  .push(ImagesViewerPage(imagesDocs: e.images));
                            },
                            label: const Text("مشاهده تصویر"),
                            icon: const Icon(Icons.image),
                          ),
                        ),
                      const SizedBox.square(dimension: _dividerSize),
                    ],
                  ),
                ),
              ],
              const SizedBox(height: 16),
            ],
          );
        },
        tryAgain: () {
          ref.invalidate(getProjectPropertyProvider(projectData.projectId));
        },
      ),
    );
  }
}

class _ItemValue extends StatelessWidget {
  final String title;
  final String value;
  final TextStyle? valueStyle;

  const _ItemValue({required this.title, required this.value, this.valueStyle});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "$title: ",
          ),
          TextSpan(
            text: value,
            style: valueStyle ??
                context.textTheme.bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
