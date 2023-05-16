import 'package:riverpod_study/model/test.dart';
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
    var dataBasePath = await getDatabasesPath();
    String path = join(dataBasePath, "test.db");
    _database = await openDatabase(path, version: 1, onCreate: _databaseCreate);
  }

  void _databaseCreate(Database db, int version) async {
    await db.execute('''
      create table ${Test.tableName} (
        ${TestFields.id} integer primary key autoincrement,
        ${TestFields.name} text
      ) 
    ''');
  }

  void closeDataBase() async {
    if (_database != null) await _database!.close();
  }
}
