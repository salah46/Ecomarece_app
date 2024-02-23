import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  late TextEditingController userTextController;

  late TextEditingController phoneTextController;

  late TextEditingController emailSignUpTextController;

  late TextEditingController passwordSignUpTextController;

  signUp() {
    Get.offNamed(Approutes.checkemail);
  }

  toLogInPage() {
    //  Get.toNamed(Approutes.login);
  }

  @override
  void onInit() {
    userTextController = TextEditingController();
    phoneTextController = TextEditingController();
    emailSignUpTextController = TextEditingController();
    passwordSignUpTextController = TextEditingController();

    super.onInit();
  }

//   @override
//   void dispose() {
//     userTextController.clear();
//     phoneTextController.clear();
//     emailSignUpTextController.clear();
//     passwordSignUpTextController.clear();
//     super.dispose();
//   }
}
