import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mpm/presentation/auth/timer/timer_provider.dart';

class CountDownTimerWidget extends ConsumerWidget {
  final Duration duration;
  final VoidCallback? onEnd;

  const CountDownTimerWidget({super.key, required this.duration, this.onEnd});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      countDownTimerProvider(duration),
      (previous, next) {
        if (previous != next) {
          next.map(
            start: (value) {},
            end: (value) {
              onEnd?.call();
            },
          );
        }
      },
    );
    final counter = ref.watch(countDownTimerProvider(duration));
    return Text(counter.formattedTime);
  }
}
