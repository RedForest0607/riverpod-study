import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'switch.g.dart';

@riverpod
class Switch extends _$Switch {

  @override
  String build() {
    return "off";
  //  초기값
  }

  void switchText() {
    if("off" == state) {
      state = "on";
    } else {
      state = "off";
    }
  //  state handling
  }
}
