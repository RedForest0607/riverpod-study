import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@immutable
class Plant {
  const Plant({
    required this.resource,
    required this.yield,
  });

  final int resource;
  final int yield;

  Plant copyWith({int? resource, int? yield}) {
    return Plant(
      resource: resource ?? this.resource,
      yield: yield ?? this.yield
    );
  }
}

class PlantNotifier extends Notifier<Plant> {
  @override
  Plant build() {
    return const Plant(resource: 0, yield: 0); // initial value
  }

  void reset() {
    state = const Plant(resource: 0, yield: 0);
  }

  void addResource() {
    state = state.copyWith(resource: state.resource + 1);
  }

  void minusResouce() {
    if (state.resource > 0) {
      state = state.copyWith(resource: state.resource - 1);
    }
  }

  void setResource(int paramValue) {
    state = state.copyWith(resource: paramValue);
  }
}

final plantProvider = NotifierProvider<PlantNotifier, Plant>(() {
  return PlantNotifier();
});