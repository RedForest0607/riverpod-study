import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/notifiers/delta.dart';
import 'package:riverpod_study/notifiers/history.dart';
import 'package:riverpod_study/notifiers/resource.dart';

class NumberButtonWidget extends HookConsumerWidget {
  const NumberButtonWidget(
      {super.key,
      required this.numberStr,
      required this.widthLevel,
      required this.id});

  final String numberStr;
  final double widthLevel;
  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double height = MediaQuery.of(context).size.height * 0.06;
    double width = 0;
    Color backgroundColor = Colors.grey.shade800;

    if (widthLevel == 1) {
      width = MediaQuery.of(context).size.width * 0.18;
    } else if (widthLevel == 1.5) {
      width = MediaQuery.of(context).size.width * 0.27 + 5;
    } else if (widthLevel == 2) {
      width = MediaQuery.of(context).size.width * 0.36 + 10;
    }

    if (numberStr == '+') {
      backgroundColor = const Color.fromARGB(255, 45, 66, 94);
    } else if (numberStr == '-') {
      backgroundColor = const Color.fromARGB(255, 193, 88, 62);
    }

    return Container(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          onPressed: () => {
            ufSetValue(numberStr, id, context, ref),
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
          ),
          child: Text(
            numberStr,
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height *
                    MediaQuery.of(context).size.width *
                    0.00004),
          ),
        ),
      ),
    );
  }
}

void ufSetValue(
    String numberStr, String id, BuildContext context, WidgetRef ref) {
  Resource resource = ref.watch(resourceProvider);
  int delta = ref.watch(deltaProvider);
  int? parsedParam = int.tryParse(numberStr);
  int sign = 0;

  if (parsedParam == null) {
    if (numberStr == 'C') {
      ref.read(deltaProvider.notifier).reset();
    } else {
      if (numberStr == '+') {
        sign = 1;
      } else if (numberStr == '-') {
        sign = -1;
      }
      ref
          .read(resourceProvider.notifier)
          .set('${id}Stock', resource.getValue('${id}Stock') + delta * sign);

      ref.read(historyProvider.notifier).record('${id}Stock', delta * sign);
      ref.watch(deltaProvider.notifier).reset();
      Navigator.pop(context);
    }
  } else {
    ref.read(deltaProvider.notifier).setValue(parsedParam);
  }
}
