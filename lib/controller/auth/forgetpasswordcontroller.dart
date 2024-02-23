import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordContrller extends GetxController {
  late TextEditingController emailforgetTextContrller;

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  toVerifyCodePage() {
    var formestate = globalKey.currentState;
    if (formestate!.validate()) {
      Get.toNamed(Approutes.verifycode);
    } else {
      Get.dialog(
        Text("Not valid"),
      );
    }
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
