import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'timer_provider.freezed.dart';

part 'timer_provider.g.dart';

@riverpod
class CountDownTimer extends _$CountDownTimer {
  Ticker ticker = Ticker();

  @override
  CountDownState build(Duration duration) {
    final tickerSubscription = ticker.tick(ticks: duration.inSeconds).listen(
      (duration) {
        final minutes =
            ((duration / 60) % 60).floor().toString().padLeft(2, '0');
        final seconds = (duration % 60).floor().toString().padLeft(2, '0');
        state = state.copyWith(formattedTime: '$minutes:$seconds');
      },
    );
    tickerSubscription.onDone(() {
      state = const CountDownState.end("00:00");
    });
    ref.onDispose(
      () {
        tickerSubscription.cancel();
      },
    );
    return const CountDownState.start("");
  }

  reset() {
    ref.invalidateSelf();
  }
}

@freezed
class CountDownState with _$CountDownState {
  const factory CountDownState.start(String formattedTime) = _CountStartDownState;

  const factory CountDownState.end(String formattedTime) = _CountDownEndState;
}
class Ticker {
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(
      const Duration(seconds: 1),
      (x) => ticks - x - 1,
    ).take(ticks);
  }
}
