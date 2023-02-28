import 'package:flutter/material.dart';
import 'package:riverpod_study/enum/counter_enum.dart';
import 'package:riverpod_study/screen/dashboard/widget/resource_block_widget.dart';
import 'package:riverpod_study/screen/dashboard/widget/generation/generation_block_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade900,
        elevation: 0,
        title: const Text(
          '테라포밍 마스 대시보드',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
      ),
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
                  height: (MediaQuery.of(context).size.height * 0.3),
                  color: CounterEnum.generation.mainColor,
                  title: CounterEnum.generation.title,
                  widgetIcon: CounterEnum.generation.icon,
                ),
              ),
            ]),
            Row(children: [
              Expanded(
                child: Text(CounterEnum.megaCredit.title,
                    textAlign: TextAlign.center),
              ),
              Expanded(
                  child: ResourceBlockWidget(
                height: (MediaQuery.of(context).size.height * 0.3),
                color: CounterEnum.steel.mainColor,
                title: CounterEnum.steel.title,
                widgetIcon: CounterEnum.steel.icon,
              )),
              Expanded(
                child: Text(CounterEnum.titanium.title,
                    textAlign: TextAlign.center),
              ),
            ]),
            Row(
              children: [
                Expanded(
                    child: ResourceBlockWidget(
                  height: (MediaQuery.of(context).size.height * 0.3),
                  color: CounterEnum.plants.mainColor,
                  title: CounterEnum.plants.title,
                  widgetIcon: CounterEnum.plants.icon,
                )),
                Expanded(
                  child: Text(CounterEnum.energy.title,
                      textAlign: TextAlign.center),
                ),
                Expanded(
                  child:
                      Text(CounterEnum.heat.title, textAlign: TextAlign.center),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
