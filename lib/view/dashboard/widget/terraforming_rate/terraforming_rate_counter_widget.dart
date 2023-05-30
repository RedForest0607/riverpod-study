import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/common/enum/counter_enum.dart';
import 'package:riverpod_study/model/event.dart';
import 'package:riverpod_study/model/resource.dart';
import 'package:riverpod_study/provider/event_provider.dart';
import 'package:riverpod_study/provider/history_provider.dart';
import 'package:riverpod_study/provider/resource_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:riverpod_study/service/event_service.dart';

class TerraformingRateCounterWidget extends HookConsumerWidget {
  const TerraformingRateCounterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Event event = ref.watch(eventProvider);

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
                        .read(eventProvider.notifier)
                        .subtract('terraformingRate'),
                    if (event.getValue(CounterEnum.terraformingRate.id) > 0)
                      {
                        EventService.insertEvent(const Event(
                          resourceType: "terraformingRate",
                          eventValue: 1,
                          generation: 1,
                          terraformingRate: 1,
                          megaCreditStock: 1,
                          megaCreditYield: 1,
                          steelStock: 1,
                          steelYield: 1,
                          titaniumStock: 1,
                          titaniumYield: 1,
                          plantsStock: 1,
                          plantsYield: 1,
                          energyStock: 1,
                          energyYield: 1,
                          heatStock: 1,
                          heatYield: 1,
                        )),
                      },
                  },
                )),
          ),
          Expanded(
              child: Text(event.getValue('terraformingRate').toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height *
                        MediaQuery.of(context).size.width *
                        0.00004,
                  ),
                  textAlign: TextAlign.center)),
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
                    ref.read(eventProvider.notifier).add('terraformingRate'),
                    ref
                        .read(historyProvider.notifier)
                        .record('terraformingRate', 1),
                    EventService.deleteEventList(21),
                  },
                )),
          ),
        ],
      ),
    );
  }
}
