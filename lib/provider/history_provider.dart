import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/model/event.dart';

class HistoryNotifier extends ChangeNotifier {
  final history = [
    Event(
      resourceType: 'coorperation',
      eventValue: 1,
      generation: 1,
      terraformingRate: 0,
      megaCreditStock: 0,
      megaCreditYield: 0,
      steelStock: 0,
      steelYield: 0,
      titaniumStock: 0,
      titaniumYield: 0,
      plantsStock: 0,
      plantsYield: 0,
      energyStock: 0,
      energyYield: 0,
      heatStock: 0,
      heatYield: 0,
    )
  ];

  void record(String resourceType, int eventValue) {
    int length = history.length;
    Event event = Event(
      resourceType: resourceType,
      eventValue: eventValue,
      generation: history[length - 1].generation,
      terraformingRate: history[length - 1].terraformingRate,
      megaCreditStock: history[length - 1].megaCreditStock,
      megaCreditYield: history[length - 1].megaCreditYield,
      steelStock: history[length - 1].steelStock,
      steelYield: history[length - 1].steelYield,
      titaniumStock: history[length - 1].titaniumStock,
      titaniumYield: history[length - 1].titaniumYield,
      plantsStock: history[length - 1].plantsStock,
      plantsYield: history[length - 1].plantsYield,
      energyStock: history[length - 1].energyStock,
      energyYield: history[length - 1].energyYield,
      heatStock: history[length - 1].heatStock,
      heatYield: history[length - 1].heatYield,
    );

    // if (history[length - 1].resourceType == resourceType &&
    //     history[length - 1].eventValue * eventValue > 0) {
    //   history[length - 1].eventValue += eventValue;
    //   history[length - 1].setValue(resourceType, eventValue);
    // } else if (eventValue != 0) {
    //   event.setValue(resourceType, eventValue);
    //   history.add(event);
    // }

    notifyListeners();
  }

  void revoke(int eventCursor) {
    history.removeRange(eventCursor + 1, history.length);
    notifyListeners();
  }
}

final historyProvider = ChangeNotifierProvider<HistoryNotifier>((ref) {
  return HistoryNotifier();
});
