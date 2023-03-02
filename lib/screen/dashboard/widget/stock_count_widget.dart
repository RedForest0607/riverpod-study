import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:riverpod_study/notifiers/resource.dart';

class StockCounterWidget extends HookConsumerWidget {
  const StockCounterWidget({super.key, required this.id, required this.title});

  final String id;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Resource resource = ref.watch(resourceProvider);

    return Container(
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
                      0.00003,
                  color: Colors.white,
                ),
                onPressed: () => {
                  ref.read(resourceProvider.notifier).subtract('${id}Stock'),
                },
              ),
            ),
          ),
          Expanded(
            child: Text(
              resource.getValue('${id}Stock').toString(),
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
                      0.00003,
                  color: Colors.white,
                ),
                onPressed: () => {
                  ref.read(resourceProvider.notifier).add('${id}Stock'),
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
