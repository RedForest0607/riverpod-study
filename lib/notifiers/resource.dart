import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@immutable
class Resource {
  const Resource({
    required generation,
    required terraformingRate,
    required megaCreditStock,
    required megaCreditYield,
    required steelStock,
    required steelYield,
    required titaniumStock,
    required titaniumYield,
    required plantsStock,
    required plantsYield,
    required energyStock,
    required energyYield,
    required heatStock,
    required heatYield,
  })  : _generation = generation,
        _terraformingRate = terraformingRate,
        _megaCreditStock = megaCreditStock,
        _megaCreditYield = megaCreditYield,
        _steelStock = steelStock,
        _steelYield = steelYield,
        _titaniumStock = titaniumStock,
        _titaniumYield = titaniumYield,
        _plantsStock = plantsStock,
        _plantsYield = plantsYield,
        _energyStock = energyStock,
        _energyYield = energyYield,
        _heatStock = heatStock,
        _heatYield = heatYield;

  final int _generation;
  final int _terraformingRate;
  final int _megaCreditStock;
  final int _megaCreditYield;
  final int _steelStock;
  final int _steelYield;
  final int _titaniumStock;
  final int _titaniumYield;
  final int _plantsStock;
  final int _plantsYield;
  final int _energyStock;
  final int _energyYield;
  final int _heatStock;
  final int _heatYield;

  int get generation => _generation;
  int get terraformingRate => _terraformingRate;
  int get megaCreditStock => _megaCreditStock;
  int get megaCreditYield => _megaCreditYield;
  int get steelStock => _steelStock;
  int get steelYield => _steelYield;
  int get titaniumStock => _titaniumStock;
  int get titaniumYield => _titaniumYield;
  int get plantsStock => _plantsStock;
  int get plantsYield => _plantsYield;
  int get energyStock => _energyStock;
  int get energyYield => _energyYield;
  int get heatStock => _heatStock;
  int get heatYield => _heatYield;

  int getValue(String resourceType) {
    switch (resourceType) {
      case 'generation':
        return generation;
      case 'terraformingRate':
        return terraformingRate;
      case 'megaCreditStock':
        return megaCreditStock;
      case 'megaCreditYield':
        return megaCreditYield;
      case 'steelStock':
        return steelStock;
      case 'steelYield':
        return steelYield;
      case 'titaniumStock':
        return titaniumStock;
      case 'titaniumYield':
        return titaniumYield;
      case 'plantsStock':
        return plantsStock;
      case 'plantsYield':
        return plantsYield;
      case 'energyStock':
        return energyStock;
      case 'energyYield':
        return energyYield;
      case 'heatStock':
        return heatStock;
      case 'heatYield':
        return heatYield;
      default:
        return 0;
    }
  }

  Resource copyWith(
      {int? generation,
      int? terraformingRate,
      int? megaCreditStock,
      int? megaCreditYield,
      int? steelStock,
      int? steelYield,
      int? titaniumStock,
      int? titaniumYield,
      int? plantsStock,
      int? plantsYield,
      int? energyStock,
      int? energyYield,
      int? heatStock,
      int? heatYield}) {
    return Resource(
        generation: generation ?? this.generation,
        terraformingRate: terraformingRate ?? this.terraformingRate,
        megaCreditStock: megaCreditStock ?? this.megaCreditStock,
        megaCreditYield: megaCreditYield ?? this.megaCreditYield,
        steelStock: steelStock ?? this.steelStock,
        steelYield: steelYield ?? this.steelYield,
        titaniumStock: titaniumStock ?? this.titaniumStock,
        titaniumYield: titaniumYield ?? this.titaniumYield,
        plantsStock: plantsStock ?? this.plantsStock,
        plantsYield: plantsYield ?? this.plantsYield,
        energyStock: energyStock ?? this.energyStock,
        energyYield: energyYield ?? this.energyYield,
        heatStock: heatStock ?? this.heatStock,
        heatYield: heatYield ?? this.heatYield);
  }
}

class ResourceNotifier extends Notifier<Resource> {
  @override
  Resource build() {
    return const Resource(
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
        heatYield: 0);
  }

  void reset() {
    state = const Resource(
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
        heatYield: 0);
  }

  void add(String resourceType) {
    Resource newResource;

    // TODO: 히스토리 저장
    switch (resourceType) {
      case 'generation':
        newResource = state.copyWith(
            generation: state.generation + 1,
            megaCreditStock: state.megaCreditStock +
                (state.megaCreditYield + state.terraformingRate),
            steelStock: state.steelStock + state.steelYield,
            titaniumStock: state.titaniumStock + state.titaniumYield,
            plantsStock: state.plantsStock + state.plantsYield,
            energyStock: state.energyYield,
            heatStock: state.energyStock + (state.heatStock + state.heatYield));
        break;
      case 'terraformingRate':
        newResource =
            state.copyWith(terraformingRate: state.terraformingRate + 1);
        break;
      case 'megaCreditStock':
        newResource =
            state.copyWith(megaCreditStock: state.megaCreditStock + 1);
        break;
      case 'megaCreditYield':
        newResource =
            state.copyWith(megaCreditYield: state.megaCreditYield + 1);
        break;
      case 'steelStock':
        newResource = state.copyWith(steelStock: state.steelStock + 1);
        break;
      case 'steelYield':
        newResource = state.copyWith(steelYield: state.steelYield + 1);
        break;
      case 'titaniumStock':
        newResource = state.copyWith(titaniumStock: state.titaniumStock + 1);
        break;
      case 'titaniumYield':
        newResource = state.copyWith(titaniumYield: state.titaniumYield + 1);
        break;
      case 'plantsStock':
        newResource = state.copyWith(plantsStock: state.plantsStock + 1);
        break;
      case 'plantsYield':
        newResource = state.copyWith(plantsYield: state.plantsYield + 1);
        break;
      case 'energyStock':
        newResource = state.copyWith(energyStock: state.energyStock + 100);
        break;
      case 'energyYield':
        newResource = state.copyWith(energyYield: state.energyYield + 1);
        break;
      case 'heatStock':
        newResource = state.copyWith(heatStock: state.heatStock + 1);
        break;
      case 'heatYield':
        newResource = state.copyWith(heatYield: state.heatYield + 1);
        break;
      default:
        newResource = state.copyWith();
        break;
    }
    state = newResource;
  }

  void subtract(String resourceType) {
    Resource newResource;

    // TODO: 히스토리 저장
    switch (resourceType) {
      case 'terraformingRate':
        newResource = state.copyWith(
            terraformingRate: state.terraformingRate > 0
                ? state.terraformingRate - 1
                : state.terraformingRate);
        break;
      case 'megaCreditStock':
        newResource = state.copyWith(
            megaCreditStock: state.megaCreditStock > 0
                ? state.megaCreditStock - 1
                : state.megaCreditStock);
        break;
      case 'megaCreditYield':
        newResource = state.copyWith(
            megaCreditYield: state.megaCreditYield > -5
                ? state.megaCreditYield - 1
                : state.megaCreditYield);
        break;
      case 'steelStock':
        newResource = state.copyWith(
            steelStock:
                state.steelStock > 0 ? state.steelStock - 1 : state.steelStock);
        break;
      case 'steelYield':
        newResource = state.copyWith(
            steelYield:
                state.steelYield > 0 ? state.steelYield - 1 : state.steelYield);
        break;
      case 'titaniumStock':
        newResource = state.copyWith(
            titaniumStock: state.titaniumStock > 0
                ? state.titaniumStock - 1
                : state.titaniumStock);
        break;
      case 'titaniumYield':
        newResource = state.copyWith(
            titaniumYield: state.titaniumYield > 0
                ? state.titaniumYield - 1
                : state.titaniumYield);
        break;
      case 'plantsStock':
        newResource = state.copyWith(
            plantsStock: state.plantsStock > 0
                ? state.plantsStock - 1
                : state.plantsStock);
        break;
      case 'plantsYield':
        newResource = state.copyWith(
            plantsYield: state.plantsYield > 0
                ? state.plantsYield - 1
                : state.plantsYield);
        break;
      case 'energyStock':
        newResource = state.copyWith(
            energyStock: state.energyStock > 0
                ? state.energyStock - 1
                : state.energyStock);
        break;
      case 'energyYield':
        newResource = state.copyWith(
            energyYield: state.energyYield > 0
                ? state.energyYield - 1
                : state.energyYield);
        break;
      case 'heatStock':
        newResource = state.copyWith(
            heatStock:
                state.heatStock > 0 ? state.heatStock - 1 : state.heatStock);
        break;
      case 'heatYield':
        newResource = state.copyWith(
            heatYield:
                state.heatYield > 0 ? state.heatYield - 1 : state.heatYield);
        break;
      default:
        newResource = state.copyWith();
        break;
    }
    state = newResource;
  }

  void set(String resourceType, int value) {
    Resource newResource;

    // TODO: 히스토리 저장
    switch (resourceType) {
      case 'generation':
        newResource = state.copyWith(generation: value);
        break;
      case 'terraformingRate':
        newResource = state.copyWith(terraformingRate: value);
        break;
      case 'megaCreditStock':
        newResource = state.copyWith(megaCreditStock: value);
        break;
      case 'megaCreditYield':
        newResource = state.copyWith(megaCreditYield: value);
        break;
      case 'steelStock':
        newResource = state.copyWith(steelStock: value);
        break;
      case 'steelYield':
        newResource = state.copyWith(steelYield: value);
        break;
      case 'titaniumStock':
        newResource = state.copyWith(titaniumStock: value);
        break;
      case 'titaniumYield':
        newResource = state.copyWith(titaniumYield: value);
        break;
      case 'plantsStock':
        newResource = state.copyWith(plantsStock: value);
        break;
      case 'plantsYield':
        newResource = state.copyWith(plantsYield: value);
        break;
      case 'energyStock':
        newResource = state.copyWith(energyStock: value);
        break;
      case 'energyYield':
        newResource = state.copyWith(energyYield: value);
        break;
      case 'heatStock':
        newResource = state.copyWith(heatStock: value);
        break;
      case 'heatYield':
        newResource = state.copyWith(heatYield: value);
        break;
      default:
        newResource = state.copyWith();
        break;
    }
    state = newResource;
  }

  void recordHistory() {

  }
}

final resourceProvider = NotifierProvider<ResourceNotifier, Resource>(() {
  return ResourceNotifier();
});
