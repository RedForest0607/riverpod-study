import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tefoma/model/event.dart';
import 'package:tefoma/provider/event_provider.dart';

class YieldCounterWidget extends HookConsumerWidget {
  const YieldCounterWidget({super.key, required this.id, required this.title});

  final String id;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Event event = ref.watch(eventProvider);

    return SizedBox(
      height: null,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 140,
              child: IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.circleMinus,
                  size: MediaQuery.of(context).size.height *
                      MediaQuery.of(context).size.width *
                      0.000025,
                  color: Colors.white,
                ),
                onPressed: () => {
                  ref.read(eventProvider.notifier).modify('${id}Yield', -1),
                },
              ),
            ),
          ),
          Expanded(
            child: Text(
              event.getValue('${id}Yield').toString(),
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
              height: 140,
              child: IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.circlePlus,
                  size: MediaQuery.of(context).size.height *
                      MediaQuery.of(context).size.width *
                      0.000025,
                  color: Colors.white,
                ),
                onPressed: () => {
                  ref.read(eventProvider.notifier).modify('${id}Yield', 1),
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
