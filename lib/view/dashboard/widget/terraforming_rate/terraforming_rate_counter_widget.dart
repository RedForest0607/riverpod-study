import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/model/event.dart';
import 'package:riverpod_study/common/enum/counter_enum.dart';
import 'package:riverpod_study/model/resource.dart';
import 'package:riverpod_study/provider/history_provider.dart';
import 'package:riverpod_study/provider/resource_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:riverpod_study/service/event_service.dart';

class TerraformingRateCounterWidget extends HookConsumerWidget {
  const TerraformingRateCounterWidget({super.key});

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
                    if (resource.getValue(CounterEnum.terraformingRate.id) > 0)
                      {
                        ref
                            .read(historyProvider.notifier)
                            .record('terraformingRate', -1)
                      },
                  },
                )),
          ),
          Expanded(
            child: FutureBuilder<List<Event>>(
              future: EventService.retrieveEventList(),
              builder: (context, AsyncSnapshot<List<Event>> snapshot) {
                if (snapshot.data == null) {
                  return const Text('Now Empty');
                }

                snapshot.data!.map((event) => log(
                    'eventId: ${event.eventId}, resourceType: ${event.resourceType}, eventValue: ${event.eventValue}'));
                return const Text('hello');
              },
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
                    // ref.read(resourceProvider.notifier).add('terraformingRate'),
                    // ref
                    //     .read(historyProvider.notifier)
                    //     .record('terraformingRate', 1),
                  },
                )),
          ),
        ],
      ),
    );
  }
}
