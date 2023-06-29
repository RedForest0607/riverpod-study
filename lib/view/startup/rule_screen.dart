import 'package:flutter/material.dart';
import 'package:riverpod_study/view/startup/widget/rule_widget.dart';

class RuleScreen extends StatelessWidget {
  const RuleScreen({super.key});

  static String routeName = "/corporation";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.05),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RuleWidget(
            ruleIndex: 0,
          ),
          RuleWidget(
            ruleIndex: 1,
          ),
          RuleWidget(
            ruleIndex: 2,
          ),
        ],
      ),
    );
  }
}
