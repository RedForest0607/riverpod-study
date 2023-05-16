import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/model/event.dart';
import 'package:riverpod_study/model/resource.dart';
import 'package:riverpod_study/notifiers/event_cursor.dart';
import 'package:riverpod_study/notifiers/history.dart';
import 'package:riverpod_study/notifiers/resource.dart';

class NewGameButtonWidget extends HookConsumerWidget {
  const NewGameButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int eventCursor = ref.watch(eventCursorProvider);

    return TextButton(
      onPressed: () => showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            content: const Text('시간을 되돌리시겠습니까?'),
            backgroundColor: Colors.grey.shade900,
            contentTextStyle: const TextStyle(color: Colors.white),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith(
                    (states) {
                      return Colors.grey.shade700;
                    },
                  ),
                ),
                child: Text(
                  '취소',
                  style: TextStyle(color: Colors.yellow.shade900),
                ),
              ),
              TextButton(
                onPressed: () => {
                  revokeHistory(eventCursor, ref),
                  Navigator.pop(context),
                  Navigator.pop(context),
                  Navigator.pop(context),
                },
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith((states) {
                    return Colors.grey.shade700;
                  }),
                ),
                child: Text(
                  '확인',
                  style: TextStyle(color: Colors.yellow.shade900),
                ),
              ),
            ],
          );
        },
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          return Colors.grey.shade800;
        }),
        overlayColor: MaterialStateProperty.resolveWith((states) {
          return Colors.grey.shade700;
        }),
        padding: MaterialStateProperty.resolveWith((states) {
          return EdgeInsets.zero;
        }),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.005, 0, 0, 0),
            child: Text(
              '적용',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  fontSize: MediaQuery.of(context).size.height *
                      MediaQuery.of(context).size.width *
                      0.00003),
            ),
          ),
        ],
      ),
    );
  }
}

void revokeHistory(int eventCursor, WidgetRef ref) {
  List<Event> history = ref.watch(historyProvider).history;
  Resource resource = Resource(
    generation: history.elementAt(eventCursor).generation,
    terraformingRate: history.elementAt(eventCursor).terraformingRate,
    megaCreditStock: history.elementAt(eventCursor).megaCreditStock,
    megaCreditYield: history.elementAt(eventCursor).megaCreditYield,
    steelStock: history.elementAt(eventCursor).steelStock,
    steelYield: history.elementAt(eventCursor).steelYield,
    titaniumStock: history.elementAt(eventCursor).titaniumStock,
    titaniumYield: history.elementAt(eventCursor).titaniumYield,
    plantsStock: history.elementAt(eventCursor).plantsStock,
    plantsYield: history.elementAt(eventCursor).plantsYield,
    energyStock: history.elementAt(eventCursor).energyStock,
    energyYield: history.elementAt(eventCursor).energyYield,
    heatStock: history.elementAt(eventCursor).heatStock,
    heatYield: history.elementAt(eventCursor).heatYield,
  );

  ref.read(resourceProvider.notifier).replace(resource);
  ref.read(historyProvider.notifier).revoke(eventCursor);
}
