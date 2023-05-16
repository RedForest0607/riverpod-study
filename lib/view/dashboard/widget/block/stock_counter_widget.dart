import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/model/resource.dart';
import 'package:riverpod_study/notifiers/resource.dart';
import 'package:riverpod_study/view/dashboard/widget/popup/pop_common_widget.dart';
import 'package:riverpod_study/view/dashboard/widget/popup/pop_numpad/pop_numpad_widget.dart';

class StockCounterWidget extends HookConsumerWidget {
  const StockCounterWidget({super.key, required this.id, required this.title});

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
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return PopCommonWidget(
                      iconData: Icons.calculate_rounded,
                      title: '보유량',
                      content: PopNumpadWidget(id: id),
                    );
                  }),
              child: Text(
                resource.getValue('${id}Stock').toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.height *
                      MediaQuery.of(context).size.width *
                      0.00006,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
