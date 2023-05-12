import 'package:flutter/material.dart';

class PopCommonWidget extends StatelessWidget {
  const PopCommonWidget(
      {super.key,
      required this.iconData,
      required this.title,
      required this.content});

  final IconData iconData;
  final String title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(iconData,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.height *
                        MediaQuery.of(context).size.width *
                        0.00004),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.006, 0, 0, 0),
                  child: Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height *
                            MediaQuery.of(context).size.width *
                            0.00004,
                        height: 1.4,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            height: 1.0,
            margin: EdgeInsets.zero,
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade900,
      titlePadding: EdgeInsets.zero,
      contentPadding:
          EdgeInsets.fromLTRB(0, 0, 0, MediaQuery.of(context).size.height / 80),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: const BorderSide(color: Colors.white),
      ),
      content: SizedBox(
        height: MediaQuery.of(context).size.height / 1.3,
        width: MediaQuery.of(context).size.width / 1.4,
        child: content,
      ),
    );
  }
}
