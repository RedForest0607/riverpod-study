import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/model/event.dart';
import 'package:riverpod_study/provider/event_cursor_provider.dart';
import 'package:riverpod_study/provider/event_provider.dart';
import 'package:riverpod_study/provider/history_provider.dart';

class YieldHistoryCounterWidget extends HookConsumerWidget {
  const YieldHistoryCounterWidget({super.key, required this.resourceName});

  final String resourceName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Event event = ref.watch(eventProvider);
    int eventCursor = ref.watch(eventCursorProvider);
    List<Event> history = ref.watch(historyProvider).history;

    return SizedBox(
      height: null,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              event.getValue("${resourceName}Yield").toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height *
                    MediaQuery.of(context).size.width *
                    0.00004,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              child: Icon(
                Icons.arrow_forward_rounded,
                size: MediaQuery.of(context).size.height *
                    MediaQuery.of(context).size.width *
                    0.00003,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              history[eventCursor].getValue("${resourceName}Yield").toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height *
                    MediaQuery.of(context).size.width *
                    0.00004,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
