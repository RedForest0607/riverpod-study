import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:riverpod_study/enum/counter_enum.dart';
import 'package:riverpod_study/notifiers/plant.dart';

class YieldCounterWidget extends HookConsumerWidget {
  const YieldCounterWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Plant yield;

    yield = ref.watch(plantProvider);

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
                  if (CounterEnum.plants.title == title)
                    {
                      ref.read(plantProvider.notifier).minusResouce(),
                    },
                },
              ),
            ),
          ),
          Expanded(
            child: Text(
              yield.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height *
                    MediaQuery.of(context).size.width *
                    0.00003,
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
                  if (CounterEnum.plants.title == title)
                    {
                      ref.read(plantProvider.notifier).addResource(),
                    },
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
