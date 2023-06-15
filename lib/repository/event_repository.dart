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
      orderBy: "${EventFields.eventId} DESC",
    );

    return result.map(
      (data) {
        return Event.fromJson(data);
      },
    ).toList();
  }

  static Future<int> insertEvent(Event event) async {
    Database db = await DBHelper().database;
    int result = await db.insert(
      Event.tableName,
      event.toJson("insert"),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return result;
  }

  static Future<int> deleteEventList(int index) async {
    Database db = await DBHelper().database;
    int result = 0;
    result = await db
        .delete(Event.tableName, where: 'EVENT_ID >= ?', whereArgs: [index]);
    return result;
  }
}
