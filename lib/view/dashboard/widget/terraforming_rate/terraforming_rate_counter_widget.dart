import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/common/db_crud.dart';
import 'package:riverpod_study/common/db_helper.dart';
import 'package:riverpod_study/common/enum/counter_enum.dart';
import 'package:riverpod_study/model/resource.dart';
import 'package:riverpod_study/model/test.dart';
import 'package:riverpod_study/notifiers/history.dart';
import 'package:riverpod_study/notifiers/resource.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:riverpod_study/service/test_service.dart';

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
            child: FutureBuilder<String>(
              future: loadTestName(),
              builder: (context, AsyncSnapshot<String> snapshot) {
                return Text(
                  snapshot.data == null ? "0" : snapshot.data!,
                  // resource.getValue(CounterEnum.terraformingRate.id).toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height *
                        MediaQuery.of(context).size.width *
                        0.00004,
                  ),
                  textAlign: TextAlign.center,
                );
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
                    testSample(),
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

void testSample() async {
  var test = const Test(
    name: "123",
  );
  await DBCrud.create(test);
}

Future<String> loadTestName() async {
  var list = await DBCrud.getName();
  var name = list[0].name;
  return name;
}
