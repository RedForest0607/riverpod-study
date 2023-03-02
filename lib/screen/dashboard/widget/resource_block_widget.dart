import 'package:flutter/material.dart';
import 'package:riverpod_study/screen/dashboard/widget/block_header_widget.dart';
import 'package:riverpod_study/screen/dashboard/widget/stock_count_widget.dart';
import 'package:riverpod_study/screen/dashboard/widget/yield_counter_widget.dart';

class ResourceBlockWidget extends StatelessWidget {
  const ResourceBlockWidget({
    super.key,
    required this.height,
    required this.color,
    required this.id,
    required this.title,
    required this.widgetIcon,
  });

  final double height;
  final Color color;
  final String id;
  final String title;
  final IconData widgetIcon;

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
                children: [
                  Expanded(
                    child: StockCounterWidget(id: id, title: title),
                  ),
                  Expanded(
                    child: YieldCounterWidget(id: id, title: title),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
