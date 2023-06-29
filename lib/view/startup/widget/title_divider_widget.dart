import 'package:flutter/material.dart';

class TitleDividerWidget extends StatelessWidget {
  const TitleDividerWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.height *
                    MediaQuery.of(context).size.width *
                    0.00004,
                top: MediaQuery.of(context).size.height / 100,
                right: MediaQuery.of(context).size.height *
                    MediaQuery.of(context).size.width *
                    0.00008),
            child: const Divider(
              color: Colors.white,
              height: 45,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 100,
          ),
          child: Text(title,
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height / 50,
              )),
        ),
        Expanded(
            child: Container(
          margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.height *
                  MediaQuery.of(context).size.width *
                  0.00008,
              top: MediaQuery.of(context).size.height / 100,
              right: MediaQuery.of(context).size.height *
                  MediaQuery.of(context).size.width *
                  0.00004),
          child: Divider(
            color: Colors.white,
            height: MediaQuery.of(context).size.height / 30,
          ),
        )),
      ],
    );
  }
}
