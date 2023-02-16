import 'package:flutter/material.dart';
import 'package:riverpod_study/enum/counter_enum.dart';

class BlockHeaderWidget extends StatelessWidget {
  const BlockHeaderWidget({super.key, this.height});

  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        color: CounterEnum.generation.mainColor,
        border: Border.all(),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            const WidgetSpan(
              child: Icon(IconData(0xf005c, fontFamily: 'MaterialIcons')),
            ),
            TextSpan(
              text: CounterEnum.generation.title,
            ),
          ],
        ),
      ),
    );
  }
}
