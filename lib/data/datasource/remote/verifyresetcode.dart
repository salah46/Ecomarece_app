import 'package:ecomarce_app_project/apilinks.dart';
import 'package:ecomarce_app_project/core/class/crud.dart';

class VerifyResetCodeData {
  Crud crud;
  VerifyResetCodeData(this.crud);

  postData(String email, String verify) async {
    var responce = await crud.postData(Applinks.verifyResetCode, {
      "email": email,
      "verify": verify,
    });
    return responce.fold((l) => l, (r) => r);
  }
}
