import 'package:flutter/material.dart';
import 'package:riverpod_study/common/constants.dart';
import 'package:riverpod_study/view/startup/corporation_screen.dart';

class RuleWidget extends StatelessWidget {
  const RuleWidget({super.key, required this.ruleIndex});

  final int ruleIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width / 100,
          MediaQuery.of(context).size.height / 50,
          MediaQuery.of(context).size.width / 100,
          0),
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width / 50,
          MediaQuery.of(context).size.height / 100,
          MediaQuery.of(context).size.width / 50,
          MediaQuery.of(context).size.height / 100),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: Colors.white,
        ),
      ),
      child: ElevatedButton(
        onPressed: () => {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      CorporationScreen(ruleIndex: ruleIndex)))
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: SizedBox(
          width: double.infinity,
          child: Text(ruleList[ruleIndex]["name"],
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height *
                      MediaQuery.of(context).size.width *
                      0.000085,
                  color: Colors.white)),
        ),
      ),
    );
  }
}
