import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/enum/counter_enum.dart';
import 'package:riverpod_study/notifiers/resource.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TrCounterWidget extends HookConsumerWidget {
  const TrCounterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Resource resource = ref.watch(resourceProvider);

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
                    ref
                        .read(resourceProvider.notifier)
                        .subtract('terraformingRate'),
                  },
                )),
          ),
          Expanded(
            child: Text(
              resource.getValue(CounterEnum.terraformingRate.id).toString(),
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
                    ref.read(resourceProvider.notifier).add('terraformingRate'),
                  },
                )),
          ),
        ],
      ),
    );
  }
}
