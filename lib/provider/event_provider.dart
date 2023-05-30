import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_study/model/event.dart';

class EventNotifier extends Notifier<Event> {
  @override
  Event build() {
    return const Event(
        eventId: -1,
        resourceType: 'init',
        eventValue: 0,
        generation: 0,
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
    state = const Event(
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
    Event newEvent;

    switch (resourceType) {
      case 'generation':
        newEvent = state.copyWith(
            generation: state.generation! + 1,
            megaCreditStock: state.megaCreditStock! +
                (state.megaCreditYield! + state.terraformingRate!),
            steelStock: state.steelStock! + state.steelYield!,
            titaniumStock: state.titaniumStock! + state.titaniumYield!,
            plantsStock: state.plantsStock! + state.plantsYield!,
            energyStock: state.energyYield,
            heatStock:
                state.energyStock! + (state.heatStock! + state.heatYield!));
        break;
      case 'terraformingRate':
        newEvent =
            state.copyWith(terraformingRate: state.terraformingRate! + 1);
        break;
      case 'megaCreditStock':
        newEvent = state.copyWith(megaCreditStock: state.megaCreditStock! + 1);
        break;
      case 'megaCreditYield':
        newEvent = state.copyWith(megaCreditYield: state.megaCreditYield! + 1);
        break;
      case 'steelStock':
        newEvent = state.copyWith(steelStock: state.steelStock! + 1);
        break;
      case 'steelYield':
        newEvent = state.copyWith(steelYield: state.steelYield! + 1);
        break;
      case 'titaniumStock':
        newEvent = state.copyWith(titaniumStock: state.titaniumStock! + 1);
        break;
      case 'titaniumYield':
        newEvent = state.copyWith(titaniumYield: state.titaniumYield! + 1);
        break;
      case 'plantsStock':
        newEvent = state.copyWith(plantsStock: state.plantsStock! + 1);
        break;
      case 'plantsYield':
        newEvent = state.copyWith(plantsYield: state.plantsYield! + 1);
        break;
      case 'energyStock':
        newEvent = state.copyWith(energyStock: state.energyStock! + 100);
        break;
      case 'energyYield':
        newEvent = state.copyWith(energyYield: state.energyYield! + 1);
        break;
      case 'heatStock':
        newEvent = state.copyWith(heatStock: state.heatStock! + 1);
        break;
      case 'heatYield':
        newEvent = state.copyWith(heatYield: state.heatYield! + 1);
        break;
      default:
        newEvent = state.copyWith();
        break;
    }
    state = newEvent;
  }

  void subtract(String resourceType) {
    Event newEvent;

    switch (resourceType) {
      case 'terraformingRate':
        newEvent = state.copyWith(
            terraformingRate: state.terraformingRate! > 0
                ? state.terraformingRate! - 1
                : state.terraformingRate);
        break;
      case 'megaCreditStock':
        newEvent = state.copyWith(
            megaCreditStock: state.megaCreditStock! > 0
                ? state.megaCreditStock! - 1
                : state.megaCreditStock);
        break;
      case 'megaCreditYield':
        newEvent = state.copyWith(
            megaCreditYield: state.megaCreditYield! > -5
                ? state.megaCreditYield! - 1
                : state.megaCreditYield);
        break;
      case 'steelStock':
        newEvent = state.copyWith(
            steelStock: state.steelStock! > 0
                ? state.steelStock! - 1
                : state.steelStock);
        break;
      case 'steelYield':
        newEvent = state.copyWith(
            steelYield: state.steelYield! > 0
                ? state.steelYield! - 1
                : state.steelYield);
        break;
      case 'titaniumStock':
        newEvent = state.copyWith(
            titaniumStock: state.titaniumStock! > 0
                ? state.titaniumStock! - 1
                : state.titaniumStock);
        break;
      case 'titaniumYield':
        newEvent = state.copyWith(
            titaniumYield: state.titaniumYield! > 0
                ? state.titaniumYield! - 1
                : state.titaniumYield);
        break;
      case 'plantsStock':
        newEvent = state.copyWith(
            plantsStock: state.plantsStock! > 0
                ? state.plantsStock! - 1
                : state.plantsStock);
        break;
      case 'plantsYield':
        newEvent = state.copyWith(
            plantsYield: state.plantsYield! > 0
                ? state.plantsYield! - 1
                : state.plantsYield);
        break;
      case 'energyStock':
        newEvent = state.copyWith(
            energyStock: state.energyStock! > 0
                ? state.energyStock! - 1
                : state.energyStock);
        break;
      case 'energyYield':
        newEvent = state.copyWith(
            energyYield: state.energyYield! > 0
                ? state.energyYield! - 1
                : state.energyYield);
        break;
      case 'heatStock':
        newEvent = state.copyWith(
            heatStock:
                state.heatStock! > 0 ? state.heatStock! - 1 : state.heatStock);
        break;
      case 'heatYield':
        newEvent = state.copyWith(
            heatYield:
                state.heatYield! > 0 ? state.heatYield! - 1 : state.heatYield);
        break;
      default:
        newEvent = state.copyWith();
        break;
    }
    state = newEvent;
  }

  void set(String resourceType, int value) {
    Event newEvent;

    switch (resourceType) {
      case 'generation':
        newEvent = state.copyWith(generation: value);
        break;
      case 'terraformingRate':
        newEvent = state.copyWith(terraformingRate: value);
        break;
      case 'megaCreditStock':
        newEvent = state.copyWith(megaCreditStock: value);
        break;
      case 'megaCreditYield':
        newEvent = state.copyWith(megaCreditYield: value);
        break;
      case 'steelStock':
        newEvent = state.copyWith(steelStock: value);
        break;
      case 'steelYield':
        newEvent = state.copyWith(steelYield: value);
        break;
      case 'titaniumStock':
        newEvent = state.copyWith(titaniumStock: value);
        break;
      case 'titaniumYield':
        newEvent = state.copyWith(titaniumYield: value);
        break;
      case 'plantsStock':
        newEvent = state.copyWith(plantsStock: value);
        break;
      case 'plantsYield':
        newEvent = state.copyWith(plantsYield: value);
        break;
      case 'energyStock':
        newEvent = state.copyWith(energyStock: value);
        break;
      case 'energyYield':
        newEvent = state.copyWith(energyYield: value);
        break;
      case 'heatStock':
        newEvent = state.copyWith(heatStock: value);
        break;
      case 'heatYield':
        newEvent = state.copyWith(heatYield: value);
        break;
      default:
        newEvent = state.copyWith();
        break;
    }
    state = newEvent;
  }

  void replace(Event event) {
    state = event;
  }
}

final eventProvider = NotifierProvider<EventNotifier, Event>(() {
  return EventNotifier();
});
