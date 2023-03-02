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
}
