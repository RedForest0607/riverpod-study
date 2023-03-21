// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';

enum CounterEnum {
  generation(
      id: 'generation',
      title: '세대',
      icon: Icons.people_alt_rounded,
      mainColor: Colors.blueGrey),
  terraformingRate(
      id: 'terraformingRate',
      title: 'TR',
      icon: Icons.language_rounded,
      mainColor: Colors.orange),
  megaCredit(
      id: 'megaCredit',
      title: '메가크레딧',
      icon: Icons.euro_rounded,
      mainColor: Colors.amber),
  steel(
      id: 'steel',
      title: '철',
      icon: Icons.construction_rounded,
      mainColor: Colors.brown),
  titanium(
      id: 'titanium',
      title: '티타늄',
      icon: Icons.star_border_rounded,
      mainColor: Colors.grey),
  plants(
      id: 'plants',
      title: '식물',
      icon: Icons.forest_rounded,
      mainColor: Colors.green),
  energy(
      id: 'energy',
      title: '에너지',
      icon: Icons.offline_bolt_rounded,
      mainColor: Colors.blue),
  heat(
      id: 'heat',
      title: '열',
      icon: Icons.local_fire_department_rounded,
      mainColor: Colors.red);

  final String id;
  final String title;
  final IconData icon;
  final Color mainColor;

  const CounterEnum({
    required this.id,
    required this.title,
    required this.icon,
    required this.mainColor,
  });

  static IconData? getIcon(String resourceType) {
    if (resourceType == 'generation') return CounterEnum.generation.icon;
    if (resourceType == 'terraformingRate')
      return CounterEnum.terraformingRate.icon;
    if (resourceType.startsWith('megaCredit'))
      return CounterEnum.megaCredit.icon;
    if (resourceType.startsWith('steel')) return CounterEnum.steel.icon;
    if (resourceType.startsWith('titanium')) return CounterEnum.titanium.icon;
    if (resourceType.startsWith('plants')) return CounterEnum.plants.icon;
    if (resourceType.startsWith('energy')) return CounterEnum.energy.icon;
    if (resourceType.startsWith('heat')) return CounterEnum.heat.icon;
    return null;
  }

  static Color? getColor(String resourceType) {
    if (resourceType == 'generation') return CounterEnum.generation.mainColor;
    if (resourceType == 'terraformingRate')
      return CounterEnum.terraformingRate.mainColor;
    if (resourceType.startsWith('megaCredit'))
      return CounterEnum.megaCredit.mainColor;
    if (resourceType.startsWith('steel')) return CounterEnum.steel.mainColor;
    if (resourceType.startsWith('titanium'))
      return CounterEnum.titanium.mainColor;
    if (resourceType.startsWith('plants')) return CounterEnum.plants.mainColor;
    if (resourceType.startsWith('energy')) return CounterEnum.energy.mainColor;
    if (resourceType.startsWith('heat')) return CounterEnum.heat.mainColor;
    return null;
  }

  static String? getType(String resourceType) {
    if (resourceType == 'generation') return CounterEnum.generation.title;
    if (resourceType == 'terraformingRate')
      return CounterEnum.terraformingRate.title;
    if (resourceType.endsWith('Stock')) return '보유량';
    if (resourceType.endsWith('Yield')) return '생산량';
    return null;
  }
}
