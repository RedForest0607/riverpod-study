import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/model/event.dart';
import 'package:riverpod_study/provider/event_provider.dart';

class StockHistoryCounterWidget extends HookConsumerWidget {
  const StockHistoryCounterWidget({super.key, required this.resourceName});

  final String resourceName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Event event = ref.watch(eventProvider);

    return SizedBox(
      height: null,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              event.getValue("${resourceName}Stock").toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height *
                    MediaQuery.of(context).size.width *
                    0.00005,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.11,
              child: Icon(
                Icons.arrow_forward_rounded,
                size: MediaQuery.of(context).size.height *
                    MediaQuery.of(context).size.width *
                    0.00005,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              event.getValue("${resourceName}Stock").toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height *
                    MediaQuery.of(context).size.width *
                    0.00005,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
