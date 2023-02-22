import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          const Spacer(
            flex: 1,
          ),
          Expanded(
            child: Text(
              generation.toString(),
              style: const TextStyle(color: Colors.white, fontSize: 50),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 140,
              child: IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.circlePlus,
                  color: Colors.white,
                  size: 50,
                ),
                onPressed: () => ref.read(generationProvider.notifier).add(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
