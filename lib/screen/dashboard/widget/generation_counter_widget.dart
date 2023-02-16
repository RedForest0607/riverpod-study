import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../notifiers/generation.dart';

class GenerationCounterWidget extends HookConsumerWidget {
  const GenerationCounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    int generation = ref.watch(generationProvider);

    return Row(
        children: [
        Expanded(child: Text(generation.toString()))
      ],
    );
  }
}
