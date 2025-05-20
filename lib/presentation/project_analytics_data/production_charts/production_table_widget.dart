import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/data/entities/dashboard_chart/production_chart_entity.dart'
    show CurrentPerformance;
import 'package:persian_number_utility/persian_number_utility.dart';

class ProductionTableWidget extends StatelessWidget {
  final List<CurrentPerformance> currentPerformanceList;

  const ProductionTableWidget({
    super.key,
    required this.currentPerformanceList,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => SizedBox(
        width: min(((context.width - 48) / 3),200),
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: context.colorScheme.primary.withAlpha(200),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ColoredBox(
                color: context.primaryColor,
                child: SizedBox(
                  width: double.maxFinite,
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Text(
                      currentPerformanceList[index].title ?? "",
                      style: context.textTheme.titleSmall?.copyWith(
                        color: context.colorScheme.onPrimary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(currentPerformanceList[index]
                            .performance
                            ?.toString()
                            .seRagham() ??
                        ""),
                    Divider(
                      color: context.colorScheme.primary.withAlpha(200),
                      height: 0,
                    ),
                    Text(
                      "${currentPerformanceList[index].commited}%",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox.square(
        dimension: 8,
      ),
      itemCount: currentPerformanceList.length,
    );
  }
}
