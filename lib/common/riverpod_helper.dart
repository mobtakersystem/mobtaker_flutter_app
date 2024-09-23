import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/widget/error.dart';
import 'package:mpm/domain/failure_model.dart';
import 'package:mpm/presentation/auth/providers/auth_provider.dart';

class RiverPodConnectionHelperWidget<T> extends ConsumerWidget {
  final AsyncValue<ResultData<T>> value;
  final Widget Function(T) successBuilder;
  final Widget Function()? loadingBuilder;
  final Widget Function(Object error)? failureBuilder;
  final Function() tryAgain;

  const RiverPodConnectionHelperWidget(
      {super.key,
      required this.value,
      required this.successBuilder,
      required this.tryAgain,
      this.loadingBuilder,
      this.failureBuilder});

  @override
  Widget build(BuildContext context, ref) {
    return value.when(
      skipLoadingOnRefresh: !value.hasError,
      data: (data) => ResulFailureHandler<T>(
        data: data,
        tryAgain: tryAgain,
        onSuccess: (value) => successBuilder.call(value),
        onFailure: (value) {
          print("FFFF");
          print(value);
          if (value is UnAuthorizedFailure) {
            ref.read(authProvider.notifier).unAuthenticated().then(
              (value) {
                if (context.mounted) {
                  Phoenix.rebirth(context);
                }
              },
            );
          }
          return failureBuilder?.call(value) ??
              RetryFailureWidget(
                error: value,
                tryAgain: tryAgain,
              );
        },
      ),
      loading: () =>
          loadingBuilder?.call() ??
          const Center(
            child: CircularProgressIndicator(),
          ),
      error: (error, stack) {
        print("FFFF");
        print(error);
        if (error is UnAuthorizedFailure) {
          ref.read(authProvider.notifier).unAuthenticated().then(
            (value) {
              if (context.mounted) {
                Phoenix.rebirth(context);
              }
            },
          );
        }
        return failureBuilder?.call(error) ??
            RetryFailureWidget(
              error: error,
              tryAgain: tryAgain,
            );
      },
    );
  }
}
