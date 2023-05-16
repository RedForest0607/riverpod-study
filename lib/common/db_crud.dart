import 'package:riverpod_study/common/db_helper.dart';
import 'package:riverpod_study/model/test.dart';

class DBCrud {
  static Future<Test> create(Test test) async {
    var db = await DBHelper().database;
    var id = await db.insert(Test.tableName, test.toJson());
    return test.clone(id: id);
  }

  static Future<List<Test>> getName() async {
    var db = await DBHelper().database;
    var result = await db.query(Test.tableName,
        columns: [TestFields.id, TestFields.name], limit: 1);

    return result.map(
      (data) {
        return Test.fromJson(data);
      },
    ).toList();
  }
}
