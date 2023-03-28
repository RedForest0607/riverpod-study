import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/enum/counter_enum.dart';
import 'package:riverpod_study/notifiers/resource.dart';

class PopNumpadWidget extends HookConsumerWidget {
  const PopNumpadWidget({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Resource resource = ref.watch(resourceProvider);

    String targetValue = resource.getValue('${id}Yield').toString();

    return ClipRRect(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.14,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Colors.white60),
              ),
              child: Row(
                children: [
                  Icon(CounterEnum.getIcon(id),
                      color: CounterEnum.getColor(id),
                      size: MediaQuery.of(context).size.height *
                          MediaQuery.of(context).size.width *
                          0.0001),
                  Text(
                    targetValue,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height *
                            MediaQuery.of(context).size.width *
                            0.0001,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildNumberButton(7, context),
                _buildNumberButton(8, context),
                _buildNumberButton(9, context),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildNumberButton(4, context),
                _buildNumberButton(5, context),
                _buildNumberButton(6, context),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildNumberButton(1, context),
                _buildNumberButton(2, context),
                _buildNumberButton(3, context),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 80,
                  height: 80,
                ),
                _buildNumberButton(0, context),
                _buildBackspaceButton(context),
              ],
            ),
            _buildConfirmButton(context)
          ],
        ),
      ),
    );
  }

  Widget _buildNumberButton(int number, BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.18,
        height: MediaQuery.of(context).size.height * 0.06,
        child: ElevatedButton(
          onPressed: () => {},
          style:
              ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade800),
          child: Text(
            number.toString(),
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height *
                    MediaQuery.of(context).size.width *
                    0.00004),
          ),
        ),
      ),
    );
  }

  Widget _buildConfirmButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        width: 260,
        height: MediaQuery.of(context).size.height * 0.04,
        child: ElevatedButton(
          onPressed: () => {},
          style:
              ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade800),
          child: Text(
            'confirm',
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height *
                    MediaQuery.of(context).size.width *
                    0.000035),
          ),
        ),
      ),
    );
  }

  Widget _buildCancelButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        width: 260,
        height: 80,
        child: ElevatedButton(
          onPressed: () => {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade900),
          child: const Text(
            'cancel',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _buildBackspaceButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        width: 80,
        height: 80,
        child: ElevatedButton(
          onPressed: () {},
          style:
              ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade800),
          child: Icon(Icons.backspace),
        ),
      ),
    );
  }
}
