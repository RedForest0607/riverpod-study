import 'package:riverpod_study/common/db_helper.dart';
import 'package:riverpod_study/model/event.dart';
import 'package:sqflite/sqflite.dart';

class EventRepository {
  /// 이벤트 전체 조회
  static Future<List<Event>> selectEventList() async {
    Database db = await DBHelper().database;
    List<Map<String, Object?>> result = await db.query(
      Event.tableName,
      columns: [
        EventFields.eventId,
        EventFields.resourceType,
        EventFields.eventValue,
        EventFields.generation,
        EventFields.terraformingRate,
        EventFields.megaCreditStock,
        EventFields.megaCreditYield,
        EventFields.steelStock,
        EventFields.steelYield,
        EventFields.titaniumStock,
        EventFields.titaniumYield,
        EventFields.plantsStock,
        EventFields.plantsYield,
        EventFields.energyStock,
        EventFields.energyYield,
        EventFields.heatStock,
        EventFields.heatYield,
      ],
    );

    return result.map(
      (data) {
        return Event.fromJson(data);
      },
    ).toList();
  }
}
