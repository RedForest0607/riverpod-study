import 'package:flutter/material.dart';
import 'block_header_widget.dart';

class GenerationBlockWidget extends StatelessWidget {
  const GenerationBlockWidget({super.key, this.height});

  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          BlockHeaderWidget(height: height! / 5),
          // TODO: count section
        ],
      ),
    );
  }
}
