import 'package:ecomarce_app_project/apilinks.dart';
import 'package:ecomarce_app_project/core/class/crud.dart';

class CheckMailToResetPasswordData {
  Crud crud;
  CheckMailToResetPasswordData(this.crud);

  postData(String email,) async {
    var responce = await crud.postData(Applinks.checkMailToReset, {
      "email": email,
    });
    return responce.fold((l) => l, (r) => r);
  }
}
