import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/common/enum/counter_enum.dart';
import 'package:riverpod_study/notifiers/delta.dart';
import 'package:riverpod_study/notifiers/resource.dart';
import 'package:riverpod_study/screen/dashboard/widget/popup/pop_numpad/number_button_widget.dart';

class PopNumpadWidget extends HookConsumerWidget {
  const PopNumpadWidget({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Resource resource = ref.watch(resourceProvider);
    int delta = ref.watch(deltaProvider);

    return ClipRRect(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.09,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Colors.white60),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.02, 0, 0, 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(CounterEnum.getIcon(id),
                          color: CounterEnum.getColor(id),
                          size: MediaQuery.of(context).size.height *
                              MediaQuery.of(context).size.width *
                              0.00006),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        resource.getValue('${id}Stock').toString(),
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height *
                                MediaQuery.of(context).size.width *
                                0.00006,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.02, 0, 0, 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(CounterEnum.getIcon(id),
                          color: Colors.grey.shade900,
                          size: MediaQuery.of(context).size.height *
                              MediaQuery.of(context).size.width *
                              0.00006),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.09,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Colors.white60),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  delta.toString(),
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height *
                          MediaQuery.of(context).size.width *
                          0.00006,
                      color: Colors.white),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NumberButtonWidget(
                  numberStr: '7',
                  widthLevel: 1,
                  id: id,
                ),
                NumberButtonWidget(
                  numberStr: '8',
                  widthLevel: 1,
                  id: id,
                ),
                NumberButtonWidget(
                  numberStr: '9',
                  widthLevel: 1,
                  id: id,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NumberButtonWidget(
                  numberStr: '4',
                  widthLevel: 1,
                  id: id,
                ),
                NumberButtonWidget(
                  numberStr: '5',
                  widthLevel: 1,
                  id: id,
                ),
                NumberButtonWidget(
                  numberStr: '6',
                  widthLevel: 1,
                  id: id,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NumberButtonWidget(
                  numberStr: '1',
                  widthLevel: 1,
                  id: id,
                ),
                NumberButtonWidget(
                  numberStr: '2',
                  widthLevel: 1,
                  id: id,
                ),
                NumberButtonWidget(
                  numberStr: '3',
                  widthLevel: 1,
                  id: id,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NumberButtonWidget(
                  numberStr: '0',
                  widthLevel: 2,
                  id: id,
                ),
                NumberButtonWidget(
                  numberStr: 'C',
                  widthLevel: 1,
                  id: id,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NumberButtonWidget(
                  numberStr: '+',
                  widthLevel: 1.5,
                  id: id,
                ),
                NumberButtonWidget(
                  numberStr: '-',
                  widthLevel: 1.5,
                  id: id,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
