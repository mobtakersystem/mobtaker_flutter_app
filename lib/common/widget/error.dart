import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/common/extention/context.dart';
import 'package:mpm/common/utils/error_utilst.dart';
import 'package:mpm/domain/failure_model.dart';

class ResulFailureHandler<T> extends StatelessWidget {
  final ResultData<T> data;
  final VoidCallback tryAgain;
  final Widget Function(T value) onSuccess;
  final Widget Function(FailureModel value)? onFailure;

  const ResulFailureHandler({
    super.key,
    required this.data,
    required this.tryAgain,
    required this.onSuccess,
    this.onFailure,
  });

  @override
  Widget build(BuildContext context) {
    return data.fold(
      (l) =>
          onFailure?.call(l) ??
          RetryFailureWidget(error: l, tryAgain: tryAgain),
      (r) => onSuccess.call(r),
    );
  }
}

class RetryFailureWidget extends StatelessWidget {
  final Object error;
  final VoidCallback tryAgain;

  const RetryFailureWidget(
      {super.key, required this.error, required this.tryAgain});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer(
            builder: (context, ref, child) {
              // Future.microtask(
              //   () {
              //     if (error is UnAuthorizedFailure) {
              //       ref.read(authProvider.notifier).unAuthenticated().then(
              //         (value) {
              //           if (context.mounted) {
              //             Phoenix.rebirth(context);
              //           }
              //         },
              //       );
              //     }
              //   },
              // );
              return const SizedBox.shrink();
            },
          ),
          TextFailureWidget(error: error),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: tryAgain,
            child: const Text("تلاش مجدد"),
          ),
        ],
      ),
    );
  }
}

class TextFailureWidget extends StatelessWidget {
  final Object error;
  final TextStyle? style;

  const TextFailureWidget({super.key, required this.error, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      ErrorUtils.transformExceptionToMessage(error),
      style: style ??
          TextStyle(
            color: context.errorColor,
          ),
      textAlign: TextAlign.center,
    );
  }
}
