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
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10),),
      ),
      child: Center (
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              width: 5,
            ),
            const Icon(IconData(0xf005c, fontFamily: 'MaterialIcons'), size: 30),
            Padding(padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
            child: Text(
                  CounterEnum.generation.title,
                  style: const TextStyle(fontWeight: FontWeight.bold,height: 1.35, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
