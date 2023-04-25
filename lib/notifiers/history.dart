import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Event {
  Event({
    required this.resourceType,
    required this.eventValue,
    required this.generation,
    required this.terraformingRate,
    required this.megaCreditStock,
    required this.megaCreditYield,
    required this.steelStock,
    required this.steelYield,
    required this.titaniumStock,
    required this.titaniumYield,
    required this.plantsStock,
    required this.plantsYield,
    required this.energyStock,
    required this.energyYield,
    required this.heatStock,
    required this.heatYield,
  });

  String resourceType;
  int eventValue;
  int generation;
  int terraformingRate;
  int megaCreditStock;
  int megaCreditYield;
  int steelStock;
  int steelYield;
  int titaniumStock;
  int titaniumYield;
  int plantsStock;
  int plantsYield;
  int energyStock;
  int energyYield;
  int heatStock;
  int heatYield;

  void setValue(String resourceType, int eventValue) {
    switch (resourceType) {
      case 'generation':
        generation = generation + eventValue;
        break;
      case 'terraformingRate':
        terraformingRate = terraformingRate + eventValue;
        break;
      case 'megaCreditStock':
        megaCreditStock = megaCreditStock + eventValue;
        break;
      case 'megaCreditYield':
        megaCreditYield = megaCreditYield + eventValue;
        break;
      case 'steelStock':
        steelStock = steelStock + eventValue;
        break;
      case 'steelYield':
        steelYield = steelYield + eventValue;
        break;
      case 'titaniumStock':
        titaniumStock = titaniumStock + eventValue;
        break;
      case 'titaniumYield':
        titaniumYield = titaniumYield + eventValue;
        break;
      case 'plantsStock':
        plantsStock = plantsStock + eventValue;
        break;
      case 'plantsYield':
        plantsYield = plantsYield + eventValue;
        break;
      case 'energyStock':
        energyStock = energyStock + eventValue;
        break;
      case 'energyYield':
        energyYield = energyYield + eventValue;
        break;
      case 'heatStock':
        heatStock = heatStock + eventValue;
        break;
      case 'heatYield':
        heatYield = heatYield + eventValue;
        break;
      default:
        break;
    }
  }

  Map<String, int> _toMap() {
    return {
      'eventValue': eventValue,
      'generation': generation,
      'terraformingRate': terraformingRate,
      'megaCreditStock': megaCreditStock,
      'megaCreditYield': megaCreditYield,
      'steelStock': steelStock,
      'steelYield': steelYield,
      'titaniumStock': titaniumStock,
      'titaniumYield': titaniumYield,
      'plantsStock': plantsStock,
      'plantsYield': plantsYield,
      'energyStock': energyStock,
      'energyYield': energyYield,
      'heatStock': heatStock,
      'heatYield': heatYield
    };
  }

  int getValue(String resourceType) {
    var maap = _toMap();
    if (maap.containsKey(resourceType)) {
      return maap[resourceType]!;
    }
    throw ArgumentError('property not found');
  }
}

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

    if (history[length - 1].resourceType == resourceType &&
        history[length - 1].eventValue * eventValue > 0) {
      history[length - 1].eventValue += eventValue;
      history[length - 1].setValue(resourceType, eventValue);
    } else if (eventValue != 0) {
      event.setValue(resourceType, eventValue);
      history.add(event);
    }

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
