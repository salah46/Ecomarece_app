import 'package:ecomarce_app_project/apilinks.dart';
import 'package:ecomarce_app_project/core/class/crud.dart';

class VerifyData {
  Crud crud;
  VerifyData(this.crud);

  postData(String email, String verify) async {
    var responce = await crud.postData(Applinks.verify, {
      "email": email,
      "verify": verify,
    });
    return responce.fold((l) => l, (r) => r);
  }
}
