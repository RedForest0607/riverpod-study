import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/model/event.dart';
import 'package:riverpod_study/notifiers/history.dart';

import 'package:riverpod_study/view/dashboard/widget/popup/pop_history/event_widget.dart';

class PopHistoryWidget extends HookConsumerWidget {
  const PopHistoryWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Event> history = ref.watch(historyProvider).history;

    return SingleChildScrollView(
      child: SizedBox(
        child: Column(
          children: <Widget>[
            for (int i = history.length - 1; i > 0; i--)
              EventWidget(eventNo: i),
            SizedBox(
              height: MediaQuery.of(context).size.height / 80,
            ),
          ],
        ),
      ),
    );
  }
}
