import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tefoma/model/event.dart';
import 'package:tefoma/service/event_service.dart';

class EventNotifier extends Notifier<Event> {
  @override
  Event build() {
    return const Event(
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
    EventService.deleteEventList(0);
    state = const Event(
        resourceType: 'init',
        eventValue: 0,
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

  void modify(String resourceType, int eventValue) {
    Event newEvent;
    bool needDbInsert = false;
    bool toBeModified = false;

    switch (resourceType) {
      case 'generation':
        toBeModified = true;
        break;
      case 'terraformingRate':
        toBeModified = (state.terraformingRate + eventValue >= 0) &&
            (state.terraformingRate + eventValue < 999);
        break;
      case 'megaCreditStock':
        toBeModified = (state.megaCreditStock + eventValue >= 0) &&
            (state.megaCreditStock + eventValue < 999);
        break;
      case 'megaCreditYield':
        toBeModified = (state.megaCreditYield + eventValue >= -5) &&
            (state.megaCreditYield + eventValue < 999);
        break;
      case 'steelStock':
        toBeModified = (state.steelStock + eventValue >= 0) &&
            (state.steelStock + eventValue < 999);
        break;
      case 'steelYield':
        toBeModified = (state.steelYield + eventValue >= 0) &&
            (state.steelYield + eventValue < 999);
        break;
      case 'titaniumStock':
        toBeModified = (state.titaniumStock + eventValue >= 0) &&
            (state.titaniumStock + eventValue < 999);
        break;
      case 'titaniumYield':
        toBeModified = (state.titaniumYield + eventValue >= 0) &&
            (state.titaniumYield + eventValue < 999);
        break;
      case 'plantsStock':
        toBeModified = (state.plantsStock + eventValue >= 0) &&
            (state.plantsStock + eventValue < 999);
        break;
      case 'plantsYield':
        toBeModified = (state.plantsYield + eventValue >= 0) &&
            (state.plantsYield + eventValue < 999);
        break;
      case 'energyStock':
        toBeModified = (state.energyStock + eventValue >= 0) &&
            (state.energyStock + eventValue < 999);
        break;
      case 'energyYield':
        toBeModified = (state.energyYield + eventValue >= 0) &&
            (state.energyYield + eventValue < 999);
        break;
      case 'heatStock':
        toBeModified = (state.heatStock + eventValue >= 0) &&
            (state.heatStock + eventValue < 999);
        break;
      case 'heatYield':
        toBeModified = (state.heatYield + eventValue >= 0) &&
            (state.heatYield + eventValue < 999);
        break;
      default:
        toBeModified = false;
        break;
    }

    if (!toBeModified) return;

    if (state.resourceType != resourceType ||
        state.eventValue * eventValue < 0 ||
        resourceType == 'generation') {
      needDbInsert = true;
    }

    switch (resourceType) {
      case 'generation':
        newEvent = state.copyWith(
            resourceType: resourceType,
            eventValue: eventValue,
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
        newEvent = state.copyWith(
            resourceType: resourceType,
            eventValue:
                needDbInsert ? eventValue : state.eventValue + eventValue,
            terraformingRate: state.terraformingRate + eventValue);
        break;
      case 'megaCreditStock':
        newEvent = state.copyWith(
            resourceType: resourceType,
            eventValue:
                needDbInsert ? eventValue : state.eventValue + eventValue,
            megaCreditStock: state.megaCreditStock + eventValue);
        break;
      case 'megaCreditYield':
        newEvent = state.copyWith(
            resourceType: resourceType,
            eventValue:
                needDbInsert ? eventValue : state.eventValue + eventValue,
            megaCreditYield: state.megaCreditYield + eventValue);
        break;
      case 'steelStock':
        newEvent = state.copyWith(
            resourceType: resourceType,
            eventValue:
                needDbInsert ? eventValue : state.eventValue + eventValue,
            steelStock: state.steelStock + eventValue);
        break;
      case 'steelYield':
        newEvent = state.copyWith(
            resourceType: resourceType,
            eventValue:
                needDbInsert ? eventValue : state.eventValue + eventValue,
            steelYield: state.steelYield + eventValue);
        break;
      case 'titaniumStock':
        newEvent = state.copyWith(
            resourceType: resourceType,
            eventValue:
                needDbInsert ? eventValue : state.eventValue + eventValue,
            titaniumStock: state.titaniumStock + eventValue);
        break;
      case 'titaniumYield':
        newEvent = state.copyWith(
            resourceType: resourceType,
            eventValue:
                needDbInsert ? eventValue : state.eventValue + eventValue,
            titaniumYield: state.titaniumYield + eventValue);
        break;
      case 'plantsStock':
        newEvent = state.copyWith(
            resourceType: resourceType,
            eventValue:
                needDbInsert ? eventValue : state.eventValue + eventValue,
            plantsStock: state.plantsStock + eventValue);
        break;
      case 'plantsYield':
        newEvent = state.copyWith(
            resourceType: resourceType,
            eventValue:
                needDbInsert ? eventValue : state.eventValue + eventValue,
            plantsYield: state.plantsYield + eventValue);
        break;
      case 'energyStock':
        newEvent = state.copyWith(
            resourceType: resourceType,
            eventValue:
                needDbInsert ? eventValue : state.eventValue + eventValue,
            energyStock: state.energyStock + eventValue);
        break;
      case 'energyYield':
        newEvent = state.copyWith(
            resourceType: resourceType,
            eventValue:
                needDbInsert ? eventValue : state.eventValue + eventValue,
            energyYield: state.energyYield + eventValue);
        break;
      case 'heatStock':
        newEvent = state.copyWith(
            resourceType: resourceType,
            eventValue:
                needDbInsert ? eventValue : state.eventValue + eventValue,
            heatStock: state.heatStock + eventValue);
        break;
      case 'heatYield':
        newEvent = state.copyWith(
            resourceType: resourceType,
            eventValue:
                needDbInsert ? eventValue : state.eventValue + eventValue,
            heatYield: state.heatYield + eventValue);
        break;
      default:
        newEvent = state.copyWith();
        break;
    }

    if (needDbInsert) {
      EventService.insertEvent(newEvent);
    } else {
      EventService.updateEvent(newEvent);
    }

    state = newEvent;
  }

  void replace(Event event) {
    state = event;
  }

  void initialize(Event event) {
    EventService.insertEvent(event);
    state = event;
  }

  void revoke(Event event) {
    if (event.eventId == null) {
      return;
    } else {
      replace(event);
      EventService.deleteEventList(event.eventId!);
    }
  }
}

final eventProvider = NotifierProvider<EventNotifier, Event>(() {
  return EventNotifier();
});
