import 'package:ecomarce_app_project/apilinks.dart';
import 'package:ecomarce_app_project/core/class/crud.dart';

class SignupData {
  Crud crud;
  SignupData(this.crud);

  postData(
    String username,
    String password,
    String email,
    String phone,
  ) async {
    var responce = await crud.postData(Applinks.signup, {
      "username": username,
      "password": password,
      "email": email,
      "phone": phone,
    });
    return responce.fold((l) => l, (r) => r);
  }
}
