import 'package:flutter/material.dart';

enum CounterEnum {
  generation(title: "세대", icon: "generation", mainColor: Colors.blueGrey),
  terraformingRate(
      title: "TR", icon: "terraformingRate", mainColor: Colors.orange),
  megaCredit(title: "메가-크레딧", icon: "megaCredit", mainColor: Colors.amber),
  steel(title: "철", icon: "steel", mainColor: Colors.brown),
  titanium(title: "티타늄", icon: "titanium", mainColor: Colors.grey),
  plants(title: "식물", icon: "plants", mainColor: Colors.green),
  energy(title: "에너지", icon: "energy", mainColor: Colors.blue),
  heat(title: "열", icon: "heat", mainColor: Colors.red);

  final String title;
  final String icon;
  final Color mainColor;

  const CounterEnum({
    required this.title,
    required this.icon,
    required this.mainColor,
  });
}
