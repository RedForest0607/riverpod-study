import 'package:flutter/material.dart';

class BlockHeaderWidget extends StatelessWidget {
  const BlockHeaderWidget(
      {super.key, this.height, this.color, this.title, this.widgetIcon});

  final double? height;
  final Color? color;
  final String? title;
  final IconData? widgetIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              width: 5,
            ),
            Icon(widgetIcon,
                color: Colors.white,
                size: MediaQuery.of(context).size.height *
                    MediaQuery.of(context).size.width *
                    0.00004),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.004, 0, 0, 0),
              child: Text(
                title!,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    height: 1.4,
                    fontSize: MediaQuery.of(context).size.height *
                        MediaQuery.of(context).size.width *
                        0.000027),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
