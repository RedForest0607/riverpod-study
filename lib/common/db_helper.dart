import 'package:riverpod_study/model/event.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static final DBHelper instance = DBHelper._instance();

  Database? _database;

  DBHelper._instance() {
    _initDBHelper();
  }

  factory DBHelper() {
    return instance;
  }

  Future<Database> get database async {
    if (_database != null) return _database!;
    await _initDBHelper();
    return _database!;
  }

  Future<void> _initDBHelper() async {
    String dataBasePath = await getDatabasesPath();
    String path = join(dataBasePath, "TM_MAT_DB.db");
    _database = await openDatabase(path, version: 1, onCreate: _databaseCreate);
  }

  void _databaseCreate(Database db, int version) async {
    await db.execute('''
      create table ${Event.tableName} (
        ${EventFields.eventId} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${EventFields.resourceType} TEXT NOT NULL,
        ${EventFields.eventValue} INTEGER NOT NULL,
        ${EventFields.generation} INTEGER NOT NULL,
        ${EventFields.terraformingRate} INTEGER NOT NULL,
        ${EventFields.megaCreditStock} INTEGER NOT NULL,
        ${EventFields.megaCreditYield} INTEGER NOT NULL,
        ${EventFields.steelStock} INTEGER NOT NULL,
        ${EventFields.steelYield} INTEGER NOT NULL,
        ${EventFields.titaniumStock} INTEGER NOT NULL,
        ${EventFields.titaniumYield} INTEGER NOT NULL,
        ${EventFields.plantsStock} INTEGER NOT NULL,
        ${EventFields.plantsYield} INTEGER NOT NULL,
        ${EventFields.energyStock} INTEGER NOT NULL,
        ${EventFields.energyYield} INTEGER NOT NULL,
        ${EventFields.heatStock} INTEGER NOT NULL,
        ${EventFields.heatYield} INTEGER NOT NULL
      )
    ''');
  }

  void closeDataBase() async {
    if (_database != null) await _database!.close();
  }
}
