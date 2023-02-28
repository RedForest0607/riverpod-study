import 'package:flutter/material.dart';
import 'package:riverpod_study/screen/dashboard/widget/block_header_widget.dart';
import 'package:riverpod_study/screen/dashboard/widget/resource_count_widget.dart';

class ResourceBlockWidget extends StatelessWidget {
  const ResourceBlockWidget({
    super.key,
    required this.height,
    required this.color,
    required this.title,
    required this.widgetIcon,
  });

  final double height;
  final Color color;
  final String title;
  final IconData widgetIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          BlockHeaderWidget(
            height: height / 5,
            color: color,
            title: title,
            widgetIcon: widgetIcon,
          ),
          Expanded(
            child: ResourceCounterWidget(title: title),
          ),
        ],
      ),
    );
  }
}
