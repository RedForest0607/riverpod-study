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

  static Future<int> updateEvent(Event event) async {
    Database db = await DBHelper().database;
    int result = await db.rawUpdate(
        'UPDATE TEVENT'
        '   SET EVENT_VALUE = ?'
        '     , TERRAFORMING_RATE = ?'
        '     , MEGA_CREDIT_STOCK = ?'
        '     , MEGA_CREDIT_YIELD = ?'
        '     , STEEL_STOCK = ?'
        '     , STEEL_YIELD = ?'
        '     , TITANIUM_STOCK = ?'
        '     , TITANIUM_YIELD = ?'
        '     , PLANTS_STOCK = ?'
        '     , PLANTS_YIELD = ?'
        '     , ENERGY_STOCK = ?'
        '     , ENERGY_YIELD = ?'
        '     , HEAT_STOCK = ?'
        '     , HEAT_YIELD = ?'
        ' WHERE EVENT_ID = (SELECT MAX(E.EVENT_ID)'
        '                    FROM TEVENT E)',
        [
          event.eventValue,
          event.terraformingRate,
          event.megaCreditStock,
          event.megaCreditYield,
          event.steelStock,
          event.steelYield,
          event.titaniumStock,
          event.titaniumYield,
          event.plantsStock,
          event.plantsYield,
          event.energyStock,
          event.energyYield,
          event.heatStock,
          event.heatYield
        ]);
    return result;
  }

  static Future<int> deleteEventList(int index) async {
    Database db = await DBHelper().database;
    int result = 0;
    result = await db
        .delete(Event.tableName, where: 'EVENT_ID > ?', whereArgs: [index]);
    return result;
  }

  static Future<List<Event>> selectLastEvent() async {
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
      limit: 1,
    );

    return result.map(
      (data) {
        return Event.fromJson(data);
      },
    ).toList();
  }
}
