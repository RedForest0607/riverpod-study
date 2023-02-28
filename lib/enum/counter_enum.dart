import 'package:flutter/material.dart';

enum CounterEnum {
  generation(
      title: "세대", icon: Icons.people_alt_rounded, mainColor: Colors.blueGrey),
  terraformingRate(
      title: "TR", icon: Icons.language_rounded, mainColor: Colors.orange),
  megaCredit(
      title: "메가-크레딧", icon: Icons.euro_rounded, mainColor: Colors.amber),
  steel(title: "철", icon: Icons.construction_rounded, mainColor: Colors.brown),
  titanium(
      title: "티타늄", icon: Icons.star_border_rounded, mainColor: Colors.grey),
  plants(title: "식물", icon: Icons.forest_rounded, mainColor: Colors.green),
  energy(
      title: "에너지", icon: Icons.offline_bolt_rounded, mainColor: Colors.blue),
  heat(
      title: "열",
      icon: Icons.local_fire_department_rounded,
      mainColor: Colors.red);

  final String title;
  final IconData icon;
  final Color mainColor;

  const CounterEnum({
    required this.title,
    required this.icon,
    required this.mainColor,
  });
}
