
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/widget/error.dart';
import 'package:mpm/domain/failure_model.dart';

class RiverPodConnectionHelperWidgetMulti extends StatelessWidget {
  final List<AsyncValue<ResultData>> values;
  final Widget Function(List<dynamic>) successBuilder;
  final Widget Function()? loadingBuilder;
  final Widget Function(Object error)? failureBuilder;
  final Function() tryAgain;
  final bool skipLoadingOnRefresh;
  final bool skipLoadingOnReload;

  const RiverPodConnectionHelperWidgetMulti({
    super.key,
    required this.values,
    required this.successBuilder,
    required this.tryAgain,
    this.loadingBuilder,
    this.failureBuilder,
    this.skipLoadingOnRefresh = true,
    this.skipLoadingOnReload = false,
  });

  @override
  Widget build(BuildContext context) {
    //check loading
    final isLoading = values.any((v) => v.isLoading);

    if (isLoading) {
      return loadingBuilder?.call() ??
          const Center(child: CircularProgressIndicator());
    }

    // check error
    final errorValue = values.firstWhere(
      (v) => v.hasError,
      orElse: () => const AsyncValue.loading(), //
    );
    if (errorValue.hasError) {
      return failureBuilder?.call(errorValue.error!) ??
          RetryFailureWidget(
            error: errorValue.error!,
            tryAgain: tryAgain,
          );
    }


    final resultDataList = values.map((e) => e.value!).toList();

    final hasLeft = resultDataList.any((rd) => rd.isLeft());
    if (hasLeft) {
      final leftValue = resultDataList
          .firstWhereOrNull(
            (element) => element.isLeft(),
          )
          ?.getLeft()
          .toNullable();
      return failureBuilder?.call(
            leftValue ?? const UnexpectedFailure(),
          ) ??
          RetryFailureWidget(
            error: leftValue ?? const UnexpectedFailure(),
            tryAgain: tryAgain,
          );
    }

    // all values are Right
    final rightValues =
        resultDataList.map((rd) => rd.getRight().toNullable()!).toList();

    return successBuilder.call(rightValues);
  }
}
