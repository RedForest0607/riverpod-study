import 'package:flutter/material.dart';
import 'package:riverpod_study/enum/counter_enum.dart';
import 'package:riverpod_study/screen/history/widget/header/header_widget.dart';
import 'package:riverpod_study/widget/resource_block_widget.dart';
import 'package:riverpod_study/widget/generation_block_widget.dart';
import 'package:riverpod_study/widget/terraforming_rate_block_widget.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  static String routeName = "/history";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height *
            0.05), // here the desired height
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(
                    0, 0, MediaQuery.of(context).size.width * 0.04, 0),
                child: Row(
                  children: [
                    Expanded(
                      child: TrBlockWidget(
                        height: MediaQuery.of(context).size.height * 0.23,
                        color: CounterEnum.terraformingRate.mainColor,
                        title: CounterEnum.terraformingRate.title,
                        widgetIcon: CounterEnum.terraformingRate.icon,
                        child: Container(),
                      ),
                    ),
                    Expanded(
                      child: HeaderWidget(
                        height: MediaQuery.of(context).size.height * 0.23,
                      ),
                    ),
                    Expanded(
                      child: GenerationBlockWidget(
                        height: MediaQuery.of(context).size.height * 0.23,
                        color: CounterEnum.generation.mainColor,
                        title: CounterEnum.generation.title,
                        widgetIcon: CounterEnum.generation.icon,
                        child: Container(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(
                    0, 0, MediaQuery.of(context).size.width * 0.04, 0),
                child: Row(
                  children: [
                    Expanded(
                      child: ResourceBlockWidget(
                        height: MediaQuery.of(context).size.height * 0.3,
                        color: CounterEnum.megaCredit.mainColor,
                        title: CounterEnum.megaCredit.title,
                        widgetIcon: CounterEnum.megaCredit.icon,
                        children: [],
                      ),
                    ),
                    Expanded(
                      child: ResourceBlockWidget(
                        height: MediaQuery.of(context).size.height * 0.3,
                        color: CounterEnum.steel.mainColor,
                        title: CounterEnum.steel.title,
                        widgetIcon: CounterEnum.steel.icon,
                        children: [],
                      ),
                    ),
                    Expanded(
                      child: ResourceBlockWidget(
                        height: MediaQuery.of(context).size.height * 0.3,
                        color: CounterEnum.titanium.mainColor,
                        title: CounterEnum.titanium.title,
                        widgetIcon: CounterEnum.titanium.icon,
                        children: [],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(
                    0, 0, MediaQuery.of(context).size.width * 0.04, 0),
                child: Row(
                  children: [
                    Expanded(
                      child: ResourceBlockWidget(
                        height: MediaQuery.of(context).size.height * 0.3,
                        color: CounterEnum.plants.mainColor,
                        title: CounterEnum.plants.title,
                        widgetIcon: CounterEnum.plants.icon,
                        children: [],
                      ),
                    ),
                    Expanded(
                      child: ResourceBlockWidget(
                        height: MediaQuery.of(context).size.height * 0.3,
                        color: CounterEnum.energy.mainColor,
                        title: CounterEnum.energy.title,
                        widgetIcon: CounterEnum.energy.icon,
                        children: [],
                      ),
                    ),
                    Expanded(
                      child: ResourceBlockWidget(
                        height: MediaQuery.of(context).size.height * 0.3,
                        color: CounterEnum.heat.mainColor,
                        title: CounterEnum.heat.title,
                        widgetIcon: CounterEnum.heat.icon,
                        children: [],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
