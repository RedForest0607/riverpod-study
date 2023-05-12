import 'package:flutter/material.dart';
import 'package:riverpod_study/src/common/enum/counter_enum.dart';
import 'package:riverpod_study/src/view/dashboard/widget/block/stock_counter_widget.dart';
import 'package:riverpod_study/src/view/dashboard/widget/block/yield_counter_widget.dart';
import 'package:riverpod_study/src/view/dashboard/widget/generation/generation_counter_widget.dart';
import 'package:riverpod_study/src/view/dashboard/widget/header/header_widget.dart';
import 'package:riverpod_study/src/view/dashboard/widget/terraforming_rate/terraforming_rate_counter_widget.dart';

import 'package:riverpod_study/src/widget/resource_block_widget.dart';
import 'package:riverpod_study/src/widget/generation_block_widget.dart';
import 'package:riverpod_study/src/widget/terraforming_rate_block_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  static String routeName = "/dashboard";

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
                      child: TerraformingRateBlockWidget(
                        height: MediaQuery.of(context).size.height * 0.23,
                        color: CounterEnum.terraformingRate.mainColor,
                        title: CounterEnum.terraformingRate.title,
                        widgetIcon: CounterEnum.terraformingRate.icon,
                        child: const TerraformingRateCounterWidget(),
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
                        child: const GenerationCounterWidget(),
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
                        children: [
                          Expanded(
                            child: StockCounterWidget(
                                id: CounterEnum.megaCredit.id,
                                title: CounterEnum.megaCredit.title),
                          ),
                          Expanded(
                            child: YieldCounterWidget(
                                id: CounterEnum.megaCredit.id,
                                title: CounterEnum.megaCredit.title),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ResourceBlockWidget(
                          height: MediaQuery.of(context).size.height * 0.3,
                          color: CounterEnum.steel.mainColor,
                          title: CounterEnum.steel.title,
                          widgetIcon: CounterEnum.steel.icon,
                          children: [
                            Expanded(
                              child: StockCounterWidget(
                                  id: CounterEnum.steel.id,
                                  title: CounterEnum.steel.title),
                            ),
                            Expanded(
                              child: YieldCounterWidget(
                                  id: CounterEnum.steel.id,
                                  title: CounterEnum.steel.title),
                            ),
                          ]),
                    ),
                    Expanded(
                      child: ResourceBlockWidget(
                        height: MediaQuery.of(context).size.height * 0.3,
                        color: CounterEnum.titanium.mainColor,
                        title: CounterEnum.titanium.title,
                        widgetIcon: CounterEnum.titanium.icon,
                        children: [
                          Expanded(
                            child: StockCounterWidget(
                                id: CounterEnum.titanium.id,
                                title: CounterEnum.titanium.title),
                          ),
                          Expanded(
                            child: YieldCounterWidget(
                                id: CounterEnum.titanium.id,
                                title: CounterEnum.titanium.title),
                          ),
                        ],
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
                        children: [
                          Expanded(
                            child: StockCounterWidget(
                                id: CounterEnum.plants.id,
                                title: CounterEnum.plants.title),
                          ),
                          Expanded(
                            child: YieldCounterWidget(
                                id: CounterEnum.plants.id,
                                title: CounterEnum.plants.title),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ResourceBlockWidget(
                        height: MediaQuery.of(context).size.height * 0.3,
                        color: CounterEnum.energy.mainColor,
                        title: CounterEnum.energy.title,
                        widgetIcon: CounterEnum.energy.icon,
                        children: [
                          Expanded(
                            child: StockCounterWidget(
                                id: CounterEnum.energy.id,
                                title: CounterEnum.energy.title),
                          ),
                          Expanded(
                            child: YieldCounterWidget(
                                id: CounterEnum.energy.id,
                                title: CounterEnum.energy.title),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ResourceBlockWidget(
                        height: MediaQuery.of(context).size.height * 0.3,
                        color: CounterEnum.heat.mainColor,
                        title: CounterEnum.heat.title,
                        widgetIcon: CounterEnum.heat.icon,
                        children: [
                          Expanded(
                            child: StockCounterWidget(
                                id: CounterEnum.heat.id,
                                title: CounterEnum.heat.title),
                          ),
                          Expanded(
                            child: YieldCounterWidget(
                                id: CounterEnum.heat.id,
                                title: CounterEnum.heat.title),
                          ),
                        ],
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
