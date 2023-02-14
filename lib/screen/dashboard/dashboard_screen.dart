import 'package:flutter/material.dart';
import 'package:riverpod_study/enum/counter_enum.dart';

import 'widget/generation_block_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(children: [
              Expanded(
                child: Text(CounterEnum.terraformingRate.title,
                    textAlign: TextAlign.center),
              ),
              const Expanded(
                child: Text("HEADER", textAlign: TextAlign.center),
              ),
              Expanded(
                child: GenerationBlockWidget(
                    height: (MediaQuery.of(context).size.height / 2)),
              ),
            ]),
            Row(children: [
              Expanded(
                child: Text(CounterEnum.megaCredit.title,
                    textAlign: TextAlign.center),
              ),
              Expanded(
                child:
                    Text(CounterEnum.steel.title, textAlign: TextAlign.center),
              ),
              Expanded(
                child: Text(CounterEnum.titanium.title,
                    textAlign: TextAlign.center),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
