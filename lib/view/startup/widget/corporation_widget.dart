import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tefoma/common/constants.dart';
import 'package:tefoma/model/event.dart';
import 'package:tefoma/provider/event_provider.dart';
import 'package:tefoma/view/dashboard/dashboard_screen.dart';

class CorporationWidget extends HookConsumerWidget {
  const CorporationWidget(
      {super.key, required this.ruleIndex, required this.corporationId});

  final int ruleIndex;
  final String corporationId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width / 100,
          MediaQuery.of(context).size.height / 50,
          MediaQuery.of(context).size.width / 100,
          0),
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width / 50,
          MediaQuery.of(context).size.height / 100,
          MediaQuery.of(context).size.width / 50,
          MediaQuery.of(context).size.height / 100),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: Colors.white,
        ),
      ),
      child: ElevatedButton(
        onPressed: () => {
          ref.read(eventProvider.notifier).initialize(
                Event(
                  eventId: null,
                  resourceType: 'init',
                  eventValue: 0,
                  generation: 1,
                  terraformingRate: ruleList[ruleIndex]["terraformingRate"] +
                      corporationList
                          .where(
                              (corp) => corp["corporationId"] == corporationId)
                          .first["terraformingRate"],
                  megaCreditStock: corporationList
                      .where((corp) => corp["corporationId"] == corporationId)
                      .first["megaCreditStock"],
                  megaCreditYield: ruleList[ruleIndex]["yieldIncrement"] +
                      corporationList
                          .where(
                              (corp) => corp["corporationId"] == corporationId)
                          .first["megaCreditYield"],
                  steelStock: corporationList
                      .where((corp) => corp["corporationId"] == corporationId)
                      .first["steelStock"],
                  steelYield: ruleList[ruleIndex]["yieldIncrement"] +
                      corporationList
                          .where(
                              (corp) => corp["corporationId"] == corporationId)
                          .first["steelYield"],
                  titaniumStock: corporationList
                      .where((corp) => corp["corporationId"] == corporationId)
                      .first["titaniumStock"],
                  titaniumYield: ruleList[ruleIndex]["yieldIncrement"] +
                      corporationList
                          .where(
                              (corp) => corp["corporationId"] == corporationId)
                          .first["titaniumYield"],
                  plantsStock: corporationList
                      .where((corp) => corp["corporationId"] == corporationId)
                      .first["plantsStock"],
                  plantsYield: ruleList[ruleIndex]["yieldIncrement"] +
                      corporationList
                          .where(
                              (corp) => corp["corporationId"] == corporationId)
                          .first["plantsYield"],
                  energyStock: 0,
                  energyYield: ruleList[ruleIndex]["yieldIncrement"] +
                      corporationList
                          .where(
                              (corp) => corp["corporationId"] == corporationId)
                          .first["energyYield"],
                  heatStock: 0,
                  heatYield: ruleList[ruleIndex]["yieldIncrement"] +
                      corporationList
                          .where(
                              (corp) => corp["corporationId"] == corporationId)
                          .first["heatYield"],
                ),
              ),
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const DashboardScreen())),
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: SizedBox(
          width: double.infinity,
          child: Text(
              corporationList
                  .where((corp) => corp["corporationId"] == corporationId)
                  .first["corporationName"],
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height *
                      MediaQuery.of(context).size.width *
                      0.000035,
                  color: Colors.white)),
        ),
      ),
    );
  }
}
