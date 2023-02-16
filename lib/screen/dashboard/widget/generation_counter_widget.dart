import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/notifiers/generation.dart';

class GenerationCounterWidget extends HookConsumerWidget {
  const GenerationCounterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int generation = ref.watch(generationProvider);

    return Container(
      height: null,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          Expanded(child: Text(generation.toString())),
        ],
      ),
    );
  }
}
