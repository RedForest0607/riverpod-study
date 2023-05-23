import 'package:flutter/material.dart';

/// Database Columns' Name
@immutable
class EventFields {
  static const String eventId = 'EVENT_ID';
  static const String resourceType = 'RESOURCE_TYPE';
  static const String eventValue = 'EVENT_VALUE';
  static const String generation = 'GENERATION';
  static const String terraformingRate = 'TERRAFORMING_RATE';
  static const String megaCreditStock = 'MEGA_CREDIT_STOCK';
  static const String megaCreditYield = 'MEGA_CREDIT_YIELD';
  static const String steelStock = 'STEEL_STOCK';
  static const String steelYield = 'STEEL_YIELD';
  static const String titaniumStock = 'TITANIUM_STOCK';
  static const String titaniumYield = 'TITANIUM_YIELD';
  static const String plantsStock = 'PLANTS_STOCK';
  static const String plantsYield = 'PLANTS_YIELD';
  static const String energyStock = 'ENERGY_STOCK';
  static const String energyYield = 'ENERGY_YIELD';
  static const String heatStock = 'HEAT_STOCK';
  static const String heatYield = 'HEAT_YIELD';
}

/// Model
@immutable
class Event {
  static const String tableName = 'TEVENT';
  final int? eventId;
  final String? resourceType;
  final int? eventValue;
  final int? generation;
  final int? terraformingRate;
  final int? megaCreditStock;
  final int? megaCreditYield;
  final int? steelStock;
  final int? steelYield;
  final int? titaniumStock;
  final int? titaniumYield;
  final int? plantsStock;
  final int? plantsYield;
  final int? energyStock;
  final int? energyYield;
  final int? heatStock;
  final int? heatYield;

  const Event({
    this.eventId,
    this.resourceType,
    this.eventValue,
    this.generation,
    this.terraformingRate,
    this.megaCreditStock,
    this.megaCreditYield,
    this.steelStock,
    this.steelYield,
    this.titaniumStock,
    this.titaniumYield,
    this.plantsStock,
    this.plantsYield,
    this.energyStock,
    this.energyYield,
    this.heatStock,
    this.heatYield,
  });

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      eventId: json[EventFields.eventId] as int,
      resourceType: json[EventFields.resourceType] as String,
      eventValue: json[EventFields.eventValue] as int,
      generation: json[EventFields.generation] as int,
      terraformingRate: json[EventFields.terraformingRate] as int,
      megaCreditStock: json[EventFields.megaCreditStock] as int,
      megaCreditYield: json[EventFields.megaCreditYield] as int,
      steelStock: json[EventFields.steelStock] as int,
      steelYield: json[EventFields.steelYield] as int,
      titaniumStock: json[EventFields.titaniumStock] as int,
      titaniumYield: json[EventFields.titaniumYield] as int,
      plantsStock: json[EventFields.plantsStock] as int,
      plantsYield: json[EventFields.plantsYield] as int,
      energyStock: json[EventFields.energyStock] as int,
      energyYield: json[EventFields.energyYield] as int,
      heatStock: json[EventFields.heatStock] as int,
      heatYield: json[EventFields.heatYield] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      EventFields.eventId: eventId,
      EventFields.resourceType: resourceType,
      EventFields.eventValue: eventValue,
      EventFields.generation: generation,
      EventFields.terraformingRate: terraformingRate,
      EventFields.megaCreditStock: megaCreditStock,
      EventFields.megaCreditYield: megaCreditYield,
      EventFields.steelStock: steelStock,
      EventFields.steelYield: steelYield,
      EventFields.titaniumStock: titaniumStock,
      EventFields.titaniumYield: titaniumYield,
      EventFields.plantsStock: plantsStock,
      EventFields.plantsYield: plantsYield,
      EventFields.energyStock: energyStock,
      EventFields.energyYield: energyYield,
      EventFields.heatStock: heatStock,
      EventFields.heatYield: heatYield,
    };
  }

  Map<String, int?> _toMap() {
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
    var map = _toMap();
    if (map.containsKey(resourceType)) {
      return map[resourceType]!;
    }
    throw ArgumentError('property not found');
  }
}
