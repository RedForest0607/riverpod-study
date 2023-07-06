import 'package:flutter/material.dart';
import 'package:tefoma/common/enum/counter_enum.dart';
import 'package:tefoma/model/event.dart';
import 'package:tefoma/view/history/widget/counter/generation_history_counter_widget.dart';
import 'package:tefoma/view/history/widget/counter/stock_history_counter_widget.dart';
import 'package:tefoma/view/history/widget/counter/terraforming_rate_history_counter_widget.dart';
import 'package:tefoma/view/history/widget/counter/yield_history_counter_widget.dart';
import 'package:tefoma/view/history/widget/header/header_widget.dart';
import 'package:tefoma/widget/generation_block_widget.dart';
import 'package:tefoma/widget/resource_block_widget.dart';
import 'package:tefoma/widget/terraforming_rate_block_widget.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  static String routeName = "/history";

  @override
  Widget build(BuildContext context) {
    final Event argEvent = ModalRoute.of(context)!.settings.arguments as Event;

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
                        child: TerraformingRateHistoryCounterWidget(
                          event: argEvent,
                        ),
                      ),
                    ),
                    Expanded(
                      child: HeaderWidget(
                        height: MediaQuery.of(context).size.height * 0.23,
                        event: argEvent,
                      ),
                    ),
                    Expanded(
                      child: GenerationBlockWidget(
                        height: MediaQuery.of(context).size.height * 0.23,
                        color: CounterEnum.generation.mainColor,
                        title: CounterEnum.generation.title,
                        widgetIcon: CounterEnum.generation.icon,
                        child: GenerationHistoryCounterWidget(
                          event: argEvent,
                        ),
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
                            resourceName: CounterEnum.megaCredit.id,
                            event: argEvent,
                          ),
                          YieldHistoryCounterWidget(
                            resourceName: CounterEnum.megaCredit.id,
                            event: argEvent,
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
                            resourceName: CounterEnum.steel.id,
                            event: argEvent,
                          ),
                          YieldHistoryCounterWidget(
                            resourceName: CounterEnum.steel.id,
                            event: argEvent,
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
                            resourceName: CounterEnum.titanium.id,
                            event: argEvent,
                          ),
                          YieldHistoryCounterWidget(
                            resourceName: CounterEnum.titanium.id,
                            event: argEvent,
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
                            resourceName: CounterEnum.plants.id,
                            event: argEvent,
                          ),
                          YieldHistoryCounterWidget(
                            resourceName: CounterEnum.plants.id,
                            event: argEvent,
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
                            resourceName: CounterEnum.energy.id,
                            event: argEvent,
                          ),
                          YieldHistoryCounterWidget(
                            resourceName: CounterEnum.energy.id,
                            event: argEvent,
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
                            resourceName: CounterEnum.heat.id,
                            event: argEvent,
                          ),
                          YieldHistoryCounterWidget(
                            resourceName: CounterEnum.heat.id,
                            event: argEvent,
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
