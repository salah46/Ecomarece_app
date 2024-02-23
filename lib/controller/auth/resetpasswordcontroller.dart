import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController {
  late TextEditingController password;

  late TextEditingController repassword;

  verifymatch() {}
  resetpassword() {}

  toPageSucces() {
    Get.toNamed(Approutes.succesreset);
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    password.clear();
    repassword.clear();
    super.dispose();
  }
}
