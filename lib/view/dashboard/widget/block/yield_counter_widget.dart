import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:riverpod_study/common/enum/counter_enum.dart';
import 'package:riverpod_study/model/resource.dart';
import 'package:riverpod_study/provider/history_provider.dart';
import 'package:riverpod_study/provider/resource_provider.dart';

class YieldCounterWidget extends HookConsumerWidget {
  const YieldCounterWidget({super.key, required this.id, required this.title});

  final String id;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Resource resource = ref.watch(resourceProvider);

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
                  ref.read(resourceProvider.notifier).subtract('${id}Yield'),
                  if ((id != CounterEnum.megaCredit.id &&
                          resource.getValue('${id}Yield') > 0) ||
                      (id == CounterEnum.megaCredit.id &&
                          resource.getValue('${id}Yield') > -5))
                    {
                      ref
                          .read(historyProvider.notifier)
                          .record('${id}Yield', -1)
                    },
                },
              ),
            ),
          ),
          Expanded(
            child: Text(
              resource.getValue('${id}Yield').toString(),
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
                  ref.read(resourceProvider.notifier).add('${id}Yield'),
                  ref.read(historyProvider.notifier).record('${id}Yield', 1),
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}