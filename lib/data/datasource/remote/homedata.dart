import 'package:ecomarce_app_project/apilinks.dart';
import 'package:ecomarce_app_project/core/class/crud.dart';

class HomeData {
  Crud crud;
  HomeData(this.crud);

  postData() async {
    var responce = await crud.postData(Applinks.home, {});
    return responce.fold((l) => l, (r) => r);
  }
}
