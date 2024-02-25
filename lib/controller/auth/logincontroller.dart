import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  late TextEditingController emailAddressTextController;

  late TextEditingController passwordTextController;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  RxBool secure = false.obs;

  securestate() {
    print("gelo");
    secure.value = !secure.value;
    print(secure.value);
  }

  toPageSignUp() {
    Get.offNamed(Approutes.signup);
  }

  toPageForgetPassword() {
    Get.toNamed(Approutes.forget);
  }

  login() {
    var formestate = globalKey.currentState;
    if (formestate!.validate()) {
    } else {
      Get.dialog(
        Text("Not valid"),
      );
    }
  }

  @override
  void onInit() {
    emailAddressTextController = TextEditingController();
    passwordTextController = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    emailAddressTextController.clear();
    passwordTextController.clear();
    super.dispose();
  }
}
