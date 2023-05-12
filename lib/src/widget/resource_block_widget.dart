import 'package:flutter/material.dart';
import 'package:riverpod_study/src/view/dashboard/widget/block_header_widget.dart';

class ResourceBlockWidget extends StatelessWidget {
  const ResourceBlockWidget({
    super.key,
    required this.height,
    required this.color,
    required this.title,
    required this.widgetIcon,
    required this.children,
  });

  final double height;
  final Color color;
  final String title;
  final IconData widgetIcon;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.04,
          MediaQuery.of(context).size.height * 0.04, 0, 0),
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
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: children,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
