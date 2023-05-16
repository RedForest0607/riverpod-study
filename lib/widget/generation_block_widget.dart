import 'package:flutter/material.dart';
import 'package:riverpod_study/view/dashboard/widget/block_header_widget.dart';

class GenerationBlockWidget extends StatelessWidget {
  const GenerationBlockWidget(
      {super.key,
      this.height,
      this.color,
      this.title,
      this.widgetIcon,
      required this.child});

  final double? height;
  final Color? color;
  final String? title;
  final IconData? widgetIcon;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 0.04, 0, 0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          BlockHeaderWidget(
            height: height! / 5,
            color: color,
            title: title,
            widgetIcon: widgetIcon,
          ),
          Expanded(
            child: child,
          ),
        ],
      ),
    );
  }
}
