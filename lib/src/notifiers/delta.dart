import 'package:hooks_riverpod/hooks_riverpod.dart';

class DeltaNotifier extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  void setValue(int value) {
    if (state <= 99) {
      state = state * 10 + value;
    } else {
      state = 999;
    }
  }

  void reset() {
    state = 0;
  }
}

final deltaProvider = NotifierProvider<DeltaNotifier, int>(() {
  return DeltaNotifier();
});
