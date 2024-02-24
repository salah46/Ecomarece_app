import 'package:ecomarce_app_project/apilinks.dart';
import 'package:ecomarce_app_project/core/class/crud.dart';

class TestData {
  Crud crud;
  TestData(this.crud);

  getData() async {
    var responce = await crud.postData(Applinks.test, {});
    return responce.fold((l) => l, (r) => r);
  }
}
