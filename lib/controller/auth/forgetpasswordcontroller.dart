import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordContrller extends GetxController {
  late TextEditingController emailforgetTextContrller;

  toVerifyCodePage() {
    Get.toNamed(Approutes.verifycode);
  }

  toForgetPasswordPage() {
    Get.toNamed(Approutes.forget);
  }

  @override
  void onInit() {
    emailforgetTextContrller = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailforgetTextContrller.clear();
    super.dispose();
  }
}
