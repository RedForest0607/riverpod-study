import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tefoma/model/event.dart';
import 'package:tefoma/provider/event_provider.dart';
import 'package:tefoma/view/dashboard/widget/popup/pop_common_widget.dart';
import 'package:tefoma/view/dashboard/widget/popup/pop_numpad/pop_numpad_widget.dart';

class StockCounterWidget extends HookConsumerWidget {
  const StockCounterWidget({super.key, required this.id, required this.title});

  final String id;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Event event = ref.watch(eventProvider);

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
                event.getValue('${id}Stock').toString(),
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
