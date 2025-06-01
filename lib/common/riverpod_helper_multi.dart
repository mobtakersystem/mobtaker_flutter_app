import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart' show Phoenix;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/widget/error.dart';
import 'package:mpm/domain/failure_model.dart';
import 'package:mpm/presentation/auth/providers/auth_provider.dart'
    show authProvider;

class RiverPodConnectionHelperWidgetMulti extends ConsumerWidget {
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
  Widget build(BuildContext context, ref) {
    //check loading
    final isLoading = values.any((v) => v.isLoading);
    //check all have data , it means one of them is refreshing
    final allHaveData = values.every((v) => v.hasValue && v.value != null);

    if (isLoading && !allHaveData) {
      return loadingBuilder?.call() ??
          const Center(child: CircularProgressIndicator());
    }

    // check error
    final errorValue = values.firstWhere(
      (v) => v.hasError,
      orElse: () => const AsyncValue.loading(), //
    );
    if (errorValue.hasError && !allHaveData) {
      if (errorValue is UnAuthorizedFailure) {
        ref.read(authProvider.notifier).unAuthenticated().then(
          (value) {
            if (context.mounted) {
              Phoenix.rebirth(context);
            }
          },
        );
      }
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
      if (leftValue is UnAuthorizedFailure) {
        ref.read(authProvider.notifier).unAuthenticated().then(
              (value) {
            if (context.mounted) {
              Phoenix.rebirth(context);
            }
          },
        );
      }
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
