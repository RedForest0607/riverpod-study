import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/enum/counter_enum.dart';
import 'package:riverpod_study/notifiers/resource.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenerationCounterWidget extends HookConsumerWidget {
  const GenerationCounterWidget({super.key});

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
          const Spacer(
            flex: 1,
          ),
          Expanded(
            child: Text(
              resource.getValue(CounterEnum.generation.id).toString(),
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
                  onPressed: () => showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: const Text('다음 세대로 넘어가시겠습니까?'),
                          backgroundColor: Colors.black,
                          contentTextStyle:
                              const TextStyle(color: Colors.white),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => {
                                ref
                                    .read(resourceProvider.notifier)
                                    .add(CounterEnum.generation.id),
                                Navigator.pop(context, 'OK'),
                              },
                              child: Text(
                                '확인',
                                style: TextStyle(color: Colors.yellow.shade900),
                              ),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Cancel'),
                              child: Text(
                                '취소',
                                style: TextStyle(color: Colors.yellow.shade900),
                              ),
                            ),
                          ],
                        );
                      })),
            ),
          ),
        ],
      ),
    );
  }
}
