import 'package:flutter/material.dart';
import 'block_header_widget.dart';
import 'generation_counter_widget.dart';

class GenerationBlockWidget extends StatelessWidget {
  const GenerationBlockWidget({super.key, this.height});

  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          BlockHeaderWidget(height: height! / 5),
          const Expanded(
            child: GenerationCounterWidget(),
          ),
        ],
      ),
    );
  }
}
