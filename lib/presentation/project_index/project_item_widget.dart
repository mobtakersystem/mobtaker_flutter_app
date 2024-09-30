import 'package:flutter/material.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/data/entities/project/project_entity.dart';
import 'package:mpm/presentation/project_data/project_data_page.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class ProjectItemWidget extends StatelessWidget {
  final ProjectEntity project;

  const ProjectItemWidget({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(ProjectDataPage(projectID: project.id));
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text.rich(TextSpan(
                children: [
                  const TextSpan(text: 'سایت: '),
                  TextSpan(
                      text: project.title,
                      style: context.textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  TextSpan(
                    text: "(${project.code})",
                    style: context.textTheme.bodySmall,
                  ),
                ],
              )),
              const SizedBox.square(dimension: 6),
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(text: 'نوع: '),
                    TextSpan(
                      text: project.typeTitle(),
                    ),
                  ],
                ),
              ),
              const SizedBox.square(dimension: 6),
              Row(
                children: [
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(text: 'تاریخ شروع: '),
                          TextSpan(
                            text: project.startDate?.toPersianDateStr() ?? '-',
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (project.endDate != null)
                    Expanded(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(text: 'تاریخ پایان: '),
                            TextSpan(
                              text: project.endDate?.toPersianDateStr() ?? '-',
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox.square(dimension: 6),
              Row(
                children: [
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(text: 'وضعیت: '),
                          TextSpan(
                            text: project.status,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(text: 'درصد پیشرفت: '),
                          TextSpan(
                            text: '${project.performanceOfWhole ?? 0}%',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
