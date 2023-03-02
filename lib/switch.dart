import 'package:hooks_riverpod/hooks_riverpod.dart';

final switchProvider = NotifierProvider<SwitchNotifier, String>(() {
  return SwitchNotifier();
});

class SwitchNotifier extends Notifier<String> {
  @override
  String build() {
    return 'off';
    //  초기값
  }

  void switchText() {
    if ('off' == state) {
      state = 'on';
    } else {
      state = 'off';
    }
    //  state handling
  }
}
