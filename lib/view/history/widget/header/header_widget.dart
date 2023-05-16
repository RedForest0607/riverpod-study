import 'package:flutter/material.dart';
import 'package:riverpod_study/view/history/widget/header/cancel_button_widget.dart';
import 'package:riverpod_study/view/history/widget/header/apply_button_widget.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key, this.height});

  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 0.04, 0, 0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.auto_mode,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.height *
                        MediaQuery.of(context).size.width *
                        0.00007),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.004, 0, 0, 0),
                  child: Text(
                    '되돌리기',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                        fontSize: MediaQuery.of(context).size.height *
                            MediaQuery.of(context).size.width *
                            0.00005),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.05,
                  5,
                  MediaQuery.of(context).size.width * 0.05,
                  2.5),
              child: const NewGameButtonWidget(),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.05,
                  2.5,
                  MediaQuery.of(context).size.width * 0.05,
                  5),
              child: const HistoryButtonWidget(),
            ),
          )
        ],
      ),
    );
  }
}
