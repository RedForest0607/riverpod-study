import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/common/enum/counter_enum.dart';
import 'package:riverpod_study/notifiers/event_cursor.dart';
import 'package:riverpod_study/notifiers/history.dart';
import 'package:riverpod_study/notifiers/resource.dart';

class GenerationHistoryCounterWidget extends HookConsumerWidget {
  const GenerationHistoryCounterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Resource resource = ref.watch(resourceProvider);
    int eventCursor = ref.watch(eventCursorProvider);
    List<Event> history = ref.watch(historyProvider).history;

    return Container(
      height: null,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              resource.getValue(CounterEnum.generation.id).toString(),
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
            child: SizedBox(
              height: 140,
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
            flex: 1,
            child: Text(
              history[eventCursor].generation.toString(),
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
