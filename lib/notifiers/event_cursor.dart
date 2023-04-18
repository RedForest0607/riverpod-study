import 'package:hooks_riverpod/hooks_riverpod.dart';

class EventCursorNotifier extends Notifier<int> {
  @override
  int build() {
    return -1;
  }

  void setValue(int value) {
    state = value;
  }

  void reset() {
    state = 0;
  }
}

final deltaProvider = NotifierProvider<EventCursorNotifier, int>(() {
  return EventCursorNotifier();
});
