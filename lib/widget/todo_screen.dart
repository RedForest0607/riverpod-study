import 'package:flutter/material.dart';
import 'package:riverpod_study/widget/switch_button_widget.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TODO'),),
      body: SwitchButtonWidget()
    );
  }
}