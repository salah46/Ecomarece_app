import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  late TextEditingController emailAddressTextController;

  late TextEditingController passwordTextController;

  toPageSignUp() {
    Get.toNamed(Approutes.signup);
  }

  toPageForgetPassword() {
    Get.toNamed(Approutes.forget);
  }
  login() {}

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
