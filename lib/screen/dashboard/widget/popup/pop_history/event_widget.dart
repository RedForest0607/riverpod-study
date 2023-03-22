import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/notifiers/history.dart';

import 'package:riverpod_study/enum/counter_enum.dart';

class EventWidget extends HookConsumerWidget {
  const EventWidget({super.key, required this.eventNo});

  final int eventNo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Event> history = ref.watch(historyProvider).history;

    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width / 100,
          MediaQuery.of(context).size.height / 80,
          MediaQuery.of(context).size.width / 100,
          0),
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width / 50,
          MediaQuery.of(context).size.height / 100,
          MediaQuery.of(context).size.width / 50,
          MediaQuery.of(context).size.height / 100),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: Colors.white,
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.height *
                MediaQuery.of(context).size.width *
                0.0002,
            child: Row(
              children: [
                Icon(
                  CounterEnum.getIcon(history[eventNo].resourceType),
                  color: CounterEnum.getColor(history[eventNo].resourceType),
                  size: MediaQuery.of(context).size.height *
                      MediaQuery.of(context).size.width *
                      0.00004,
                ),
                Text(CounterEnum.getType(history[eventNo].resourceType),
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height *
                            MediaQuery.of(context).size.width *
                            0.000035,
                        color: Colors.white)),
              ],
            ),
          ),
          SizedBox(
            child: Text(
                '${history[eventNo].eventValue > 0 ? '+' : ''}${history[eventNo].eventValue}',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height *
                        MediaQuery.of(context).size.width *
                        0.000035,
                    color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
