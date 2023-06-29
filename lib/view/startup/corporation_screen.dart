import 'package:flutter/material.dart';
import 'package:riverpod_study/common/constants.dart';
import 'package:riverpod_study/view/startup/widget/corporation_widget.dart';
import 'package:riverpod_study/view/startup/widget/title_divider_widget.dart';

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
            for (Map corp in corporationList)
              if (corp["expansionId"] == "original")
                CorporationWidget(
                    ruleIndex: ruleIndex, corporationId: corp["corporationId"]),
            const TitleDividerWidget(title: "대기업시대"),
            for (Map corp in corporationList)
              if (corp["expansionId"] == "corporateEra")
                CorporationWidget(
                    ruleIndex: ruleIndex, corporationId: corp["corporationId"]),
            const TitleDividerWidget(title: "비너스 넥스트"),
            for (Map corp in corporationList)
              if (corp["expansionId"] == "venusNext")
                CorporationWidget(
                    ruleIndex: ruleIndex, corporationId: corp["corporationId"]),
            const TitleDividerWidget(title: "서곡"),
            for (Map corp in corporationList)
              if (corp["expansionId"] == "prelude")
                CorporationWidget(
                    ruleIndex: ruleIndex, corporationId: corp["corporationId"]),
            const TitleDividerWidget(title: "개척기지"),
            for (Map corp in corporationList)
              if (corp["expansionId"] == "colonies")
                CorporationWidget(
                    ruleIndex: ruleIndex, corporationId: corp["corporationId"]),
            const TitleDividerWidget(title: "격동"),
            for (Map corp in corporationList)
              if (corp["expansionId"] == "turmoil")
                CorporationWidget(
                    ruleIndex: ruleIndex, corporationId: corp["corporationId"]),
            const TitleDividerWidget(title: "프로모션"),
            for (Map corp in corporationList)
              if (corp["expansionId"] == "promotion")
                CorporationWidget(
                    ruleIndex: ruleIndex, corporationId: corp["corporationId"]),
          ],
        ),
      ),
    );
  }
}
