class Event {
  Event({
    required this.resourceType,
    required this.eventValue,
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

  String resourceType;
  int eventValue;
  int generation;
  int terraformingRate;
  int megaCreditStock;
  int megaCreditYield;
  int steelStock;
  int steelYield;
  int titaniumStock;
  int titaniumYield;
  int plantsStock;
  int plantsYield;
  int energyStock;
  int energyYield;
  int heatStock;
  int heatYield;

  void setValue(String resourceType, int eventValue) {
    switch (resourceType) {
      case 'generation':
        generation = generation + eventValue;
        break;
      case 'terraformingRate':
        terraformingRate = terraformingRate + eventValue;
        break;
      case 'megaCreditStock':
        megaCreditStock = megaCreditStock + eventValue;
        break;
      case 'megaCreditYield':
        megaCreditYield = megaCreditYield + eventValue;
        break;
      case 'steelStock':
        steelStock = steelStock + eventValue;
        break;
      case 'steelYield':
        steelYield = steelYield + eventValue;
        break;
      case 'titaniumStock':
        titaniumStock = titaniumStock + eventValue;
        break;
      case 'titaniumYield':
        titaniumYield = titaniumYield + eventValue;
        break;
      case 'plantsStock':
        plantsStock = plantsStock + eventValue;
        break;
      case 'plantsYield':
        plantsYield = plantsYield + eventValue;
        break;
      case 'energyStock':
        energyStock = energyStock + eventValue;
        break;
      case 'energyYield':
        energyYield = energyYield + eventValue;
        break;
      case 'heatStock':
        heatStock = heatStock + eventValue;
        break;
      case 'heatYield':
        heatYield = heatYield + eventValue;
        break;
      default:
        break;
    }
  }

  Map<String, int> _toMap() {
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
