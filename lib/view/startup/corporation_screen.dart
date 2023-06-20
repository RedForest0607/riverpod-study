import 'package:flutter/material.dart';
import 'package:riverpod_study/common/constants.dart';
import 'package:riverpod_study/view/startup/widget/corporation_widget.dart';

class CorporationScreen extends StatelessWidget {
  const CorporationScreen({super.key, required this.ruleIndex});

  static String routeName = "/corporation";
  final int ruleIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.05),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (Map corpId in corporationList)
              CorporationWidget(
                  ruleIndex: ruleIndex, corporationId: corpId["corporationId"])
          ],
        ),
      ),
    );
  }
}
