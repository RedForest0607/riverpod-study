import 'package:flutter/material.dart';
import 'package:riverpod_study/enum/counter_enum.dart';
import 'package:riverpod_study/screen/dashboard/widget/header/header_widget.dart';
import 'package:riverpod_study/screen/dashboard/widget/block/resource_block_widget.dart';
import 'package:riverpod_study/screen/dashboard/widget/generation/generation_block_widget.dart';
import 'package:riverpod_study/screen/dashboard/widget/terraforming_rate/terraforming_rate_block_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

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
                        id: CounterEnum.megaCredit.id,
                        title: CounterEnum.megaCredit.title,
                        widgetIcon: CounterEnum.megaCredit.icon,
                      ),
                    ),
                    Expanded(
                      child: ResourceBlockWidget(
                        height: MediaQuery.of(context).size.height * 0.3,
                        color: CounterEnum.steel.mainColor,
                        id: CounterEnum.steel.id,
                        title: CounterEnum.steel.title,
                        widgetIcon: CounterEnum.steel.icon,
                      ),
                    ),
                    Expanded(
                      child: ResourceBlockWidget(
                        height: MediaQuery.of(context).size.height * 0.3,
                        color: CounterEnum.titanium.mainColor,
                        id: CounterEnum.titanium.id,
                        title: CounterEnum.titanium.title,
                        widgetIcon: CounterEnum.titanium.icon,
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
                        id: CounterEnum.plants.id,
                        title: CounterEnum.plants.title,
                        widgetIcon: CounterEnum.plants.icon,
                      ),
                    ),
                    Expanded(
                      child: ResourceBlockWidget(
                        height: MediaQuery.of(context).size.height * 0.3,
                        color: CounterEnum.energy.mainColor,
                        id: CounterEnum.energy.id,
                        title: CounterEnum.energy.title,
                        widgetIcon: CounterEnum.energy.icon,
                      ),
                    ),
                    Expanded(
                      child: ResourceBlockWidget(
                        height: MediaQuery.of(context).size.height * 0.3,
                        color: CounterEnum.heat.mainColor,
                        id: CounterEnum.heat.id,
                        title: CounterEnum.heat.title,
                        widgetIcon: CounterEnum.heat.icon,
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
