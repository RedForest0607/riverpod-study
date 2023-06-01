import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/common/enum/counter_enum.dart';
import 'package:riverpod_study/model/event.dart';
import 'package:riverpod_study/provider/event_provider.dart';

class GenerationCounterWidget extends HookConsumerWidget {
  const GenerationCounterWidget({super.key});

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
          const Spacer(
            flex: 1,
          ),
          Expanded(
            child: Text(
              event.getValue(CounterEnum.generation.id).toString(),
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
                      backgroundColor: Colors.grey.shade900,
                      contentTextStyle: const TextStyle(color: Colors.white),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          style: ButtonStyle(
                            overlayColor: MaterialStateProperty.resolveWith(
                              (states) {
                                return Colors.grey.shade700;
                              },
                            ),
                          ),
                          child: Text(
                            '취소',
                            style: TextStyle(color: Colors.yellow.shade900),
                          ),
                        ),
                        TextButton(
                          onPressed: () => {
                            ref
                                .read(eventProvider.notifier)
                                .modify(CounterEnum.generation.id, 1),
                            Navigator.pop(context, 'OK'),
                          },
                          style: ButtonStyle(
                            overlayColor: MaterialStateProperty.resolveWith(
                              (states) {
                                return Colors.grey.shade700;
                              },
                            ),
                          ),
                          child: Text(
                            '확인',
                            style: TextStyle(color: Colors.yellow.shade900),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
