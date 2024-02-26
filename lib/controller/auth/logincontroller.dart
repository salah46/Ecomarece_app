import 'package:ecomarce_app_project/core/class/statusrequest.dart';
import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:ecomarce_app_project/core/functions/handlingdata.dart';
import 'package:ecomarce_app_project/data/datasource/remote/logindata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  late TextEditingController emailAddressTextController;
  late TextEditingController passwordTextController;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  RxBool secure = false.obs;

  StatusResquest? statusResquest;

  LoginData loginData = LoginData(Get.find());

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

  login() async {
    var formestate = globalKey.currentState;
    if (formestate!.validate()) {
      statusResquest = StatusResquest.laoding;
      update();
      print("================**" + statusResquest.toString());
      print(emailAddressTextController.value.text);
      var responce = await loginData.postData(
        emailAddressTextController.text,
        passwordTextController.text,
      );

      statusResquest = handlingData(responce);
      print(statusResquest.toString());
      if (StatusResquest.success == statusResquest) {
        if (responce['status'] == "success") {
          Get.defaultDialog(middleText: "APPROVED");
        } else {
          Get.defaultDialog(
              title: "Error", middleText: "Invalid Email or Password");
        }
      } else {
        Get.defaultDialog(middleText: statusResquest.toString());
      }
      update();
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
