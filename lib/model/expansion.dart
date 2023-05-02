import 'corporation.dart';

class Expansion {
  String expansionId;
  List<Corporation> corporationList;

  Expansion({required this.expansionId, required this.corporationList});

  factory Expansion.fromJson(Map<String, dynamic> json) {
    var corporationListJson = json['corprationList'] as List;
    var corporationList =
        corporationListJson.map((c) => Corporation.fromJson(c)).toList();

    return Expansion(
      expansionId: json['expansionId'],
      corporationList: corporationList,
    );
  }
}
