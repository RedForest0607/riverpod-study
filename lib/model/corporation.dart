class Corporation {
  Corporation(
      {required this.corporationId,
      required this.corporationName,
      required this.terraformingRate,
      required this.megaCreditStock,
      required this.megaCreditYield,
      required this.steelStock,
      required this.steelYield,
      required this.titaniumStock,
      required this.titaniumYield,
      required this.plantsStock,
      required this.plantsYield});

  String corporationId;
  String corporationName;
  int terraformingRate;
  int megaCreditStock;
  int megaCreditYield;
  int steelStock;
  int steelYield;
  int titaniumStock;
  int titaniumYield;
  int plantsStock;
  int plantsYield;

  factory Corporation.fromJson(Map<String, dynamic> json) {
    return Corporation(
      corporationId: json['corporationId'],
      corporationName: json['corporationName'],
      terraformingRate: json['terraformingRate'],
      megaCreditStock: json['megaCreditStock'],
      megaCreditYield: json['megaCreditYield'],
      steelStock: json['steelStock'],
      steelYield: json['steelYield'],
      titaniumStock: json['titaniumStock'],
      titaniumYield: json['titaniumYield'],
      plantsStock: json['plantsStock'],
      plantsYield: json['plantsYield'],
    );
  }
}
