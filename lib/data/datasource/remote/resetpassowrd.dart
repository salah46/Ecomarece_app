import 'package:ecomarce_app_project/apilinks.dart';
import 'package:ecomarce_app_project/core/class/crud.dart';

class ResetPasswordData {
  Crud crud;
  ResetPasswordData(this.crud);

  postData(String email,String password) async {
    var responce = await crud.postData(Applinks.resetPassword, {
      "email": email,
      "password":password
    });
    return responce.fold((l) => l, (r) => r);
  }
}
