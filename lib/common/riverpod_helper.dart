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
  final bool skipLoadingOnRefresh;
  final bool skipLoadingOnReload;

  const RiverPodConnectionHelperWidget({
    super.key,
    required this.value,
    required this.successBuilder,
    required this.tryAgain,
    this.loadingBuilder,
    this.failureBuilder,
    this.skipLoadingOnRefresh = true,
    this.skipLoadingOnReload = false,
  });

  @override
  Widget build(BuildContext context, ref) {
    return value.when(
      skipLoadingOnRefresh:
          ((value.hasValue && (value.value?.isLeft() ?? false)) ||
                  value.hasError)
              ? false
              : skipLoadingOnRefresh,
      skipLoadingOnReload: skipLoadingOnReload,
      data: (data) => ResulFailureHandler<T>(
        data: data,
        tryAgain: tryAgain,
        onSuccess: (value) => successBuilder.call(value),
        onFailure: (value) {
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

// SliverPodConnectionHelperWidget is a widget that helps in managing the connection state of Riverpod providers.
class SliverRiverPodConnectionHelperWidget<T> extends ConsumerWidget {
  final AsyncValue<ResultData<T>> value;
  final Widget Function(T) successBuilder;
  final Widget Function()? loadingBuilder;
  final Widget Function(Object error)? failureBuilder;
  final Function() tryAgain;
  final bool skipLoadingOnRefresh;
  final bool skipLoadingOnReload;
  final BoxConstraints placeHolderConstraints;

  const SliverRiverPodConnectionHelperWidget({
    super.key,
    required this.value,
    required this.successBuilder,
    required this.tryAgain,
    this.loadingBuilder,
    this.failureBuilder,
    this.skipLoadingOnRefresh = true,
    this.skipLoadingOnReload = false,
    this.placeHolderConstraints = const BoxConstraints(
      minHeight: 200,
    ),
  });

  @override
  Widget build(BuildContext context, ref) {
    return value.when(
      skipLoadingOnRefresh:
          ((value.hasValue && (value.value?.isLeft() ?? false)) ||
                  value.hasError)
              ? false
              : skipLoadingOnRefresh,
      skipLoadingOnReload: skipLoadingOnReload,
      data: (data) => ResulFailureHandler<T>(
        data: data,
        tryAgain: tryAgain,
        onSuccess: (value) => successBuilder.call(value),
        onFailure: (value) {
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
              SliverToBoxAdapter(
                child: ConstrainedBox(
                  constraints: placeHolderConstraints,
                  child: RetryFailureWidget(
                    error: value,
                    tryAgain: tryAgain,
                  ),
                ),
              );
        },
      ),
      loading: () =>
          loadingBuilder?.call() ??
          SliverToBoxAdapter(
              child: ConstrainedBox(
            constraints: placeHolderConstraints,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          )),
      error: (error, stack) {
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
            SliverToBoxAdapter(
              child: ConstrainedBox(
                constraints: placeHolderConstraints,
                child: RetryFailureWidget(
                  error: error,
                  tryAgain: tryAgain,
                ),
              ),
            );
      },
    );
  }
}
