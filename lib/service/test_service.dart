import 'package:riverpod_study/common/db_crud.dart';
import 'package:riverpod_study/model/test.dart';

class TestService {
  static void testSample() async {
    var test = const Test(
      name: "123",
    );
    await DBCrud.create(test);
  }

  static Future<String> loadTestName() async {
    var list = await DBCrud.getName();
    var name = list[0].name;
    return name;
  }
}
