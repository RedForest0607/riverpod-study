import 'package:flutter/material.dart';
import 'package:riverpod_study/enum/counter_enum.dart';
import 'package:riverpod_study/screen/history/widget/counter/generation_history_counter_widget.dart';
import 'package:riverpod_study/screen/history/widget/counter/stock_history_counter_widget.dart';
import 'package:riverpod_study/screen/history/widget/counter/yield_history_counter_widget.dart';
import 'package:riverpod_study/screen/history/widget/counter/terraforming_rate_history_counter_widget.dart';
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
                      child: TerraformingRateBlockWidget(
                        height: MediaQuery.of(context).size.height * 0.23,
                        color: CounterEnum.terraformingRate.mainColor,
                        title: CounterEnum.terraformingRate.title,
                        widgetIcon: CounterEnum.terraformingRate.icon,
                        child: const TerraformingRateHistoryCounterWidget(),
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
                        child: const GenerationHistoryCounterWidget(),
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
                          StockHistoryCounterWidget(
                            resouceName: CounterEnum.megaCredit.id,
                          ),
                          YieldHistoryCounterWidget(
                            resouceName: CounterEnum.megaCredit.id,
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
                          StockHistoryCounterWidget(
                            resouceName: CounterEnum.steel.id,
                          ),
                          YieldHistoryCounterWidget(
                            resouceName: CounterEnum.steel.id,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ResourceBlockWidget(
                        height: MediaQuery.of(context).size.height * 0.3,
                        color: CounterEnum.titanium.mainColor,
                        title: CounterEnum.titanium.title,
                        widgetIcon: CounterEnum.titanium.icon,
                        children: [
                          StockHistoryCounterWidget(
                            resouceName: CounterEnum.titanium.id,
                          ),
                          YieldHistoryCounterWidget(
                            resouceName: CounterEnum.titanium.id,
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
                          StockHistoryCounterWidget(
                            resouceName: CounterEnum.plants.id,
                          ),
                          YieldHistoryCounterWidget(
                            resouceName: CounterEnum.plants.id,
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
                          StockHistoryCounterWidget(
                            resouceName: CounterEnum.energy.id,
                          ),
                          YieldHistoryCounterWidget(
                            resouceName: CounterEnum.energy.id,
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
                          StockHistoryCounterWidget(
                            resouceName: CounterEnum.heat.id,
                          ),
                          YieldHistoryCounterWidget(
                            resouceName: CounterEnum.heat.id,
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
