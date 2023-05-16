class Resource {
  const Resource({
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

  final int generation;
  final int terraformingRate;
  final int megaCreditStock;
  final int megaCreditYield;
  final int steelStock;
  final int steelYield;
  final int titaniumStock;
  final int titaniumYield;
  final int plantsStock;
  final int plantsYield;
  final int energyStock;
  final int energyYield;
  final int heatStock;
  final int heatYield;

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
