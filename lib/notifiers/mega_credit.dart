import 'package:hooks_riverpod/hooks_riverpod.dart';

final megaCreditProvider = NotifierProvider<MegaCreditNotifier, int>(() {
  MegaCreditNotifier megaCreditProvider = MegaCreditNotifier();
  return megaCreditProvider;
});

class MegaCreditNotifier extends Notifier<int> {
  @override
  int build() {
    return 1; // initial value
  }

  void reset() {
    state = 0;
  }

  void add() {
    state = state + 1;
  }

  void minus() {
    if (state > 0) {
      state = state - 1;
    }
  }

  void set(int resource) {
    state = resource;
  }
}
