import 'package:ecomarce_app_project/core/class/statusrequest.dart';
import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:ecomarce_app_project/core/functions/handlingdata.dart';
import 'package:ecomarce_app_project/core/services/service.dart';
import 'package:ecomarce_app_project/data/datasource/remote/logindata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  late TextEditingController emailAddressTextController;
  late TextEditingController passwordTextController;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  RxBool secure = false.obs;
  Myservices services = Get.find();
  StatusResquest statusResquest = StatusResquest.begin;

  LoginData loginData = LoginData(Get.find());

  securestate() {
    print("gelo");
    secure.value = !secure.value;
    print(secure.value);
  }

  toPageSignUp() {
    Get.toNamed(Approutes.signup);
  }

  toPageForgetPassword() {
    Get.toNamed(Approutes.forget);
  }

  login() async {
    var formestate = globalKey.currentState;
    if (formestate!.validate()) {
      statusResquest = StatusResquest.laoding;

      update();
      print(emailAddressTextController.value.text);
      var responce = await loginData.postData(
        emailAddressTextController.text,
        passwordTextController.text,
      );

      statusResquest = handlingData(responce);
      //print(statusResquest.toString());
      if (StatusResquest.success == statusResquest) {
        if (responce['status'] == "success") {
          services.sharedPrefrences
              .setString("username", responce['data']['users_name']);
          services.sharedPrefrences
              .setString("useremail", responce['data']['users_email']);
          services.sharedPrefrences
              .setString("userphone", responce['data']['users_phone']);
          services.sharedPrefrences
              .setString("userdate", responce['data']['users_date']);
          services.sharedPrefrences
              .setString("userid", responce['data']['users_id']);
          services.sharedPrefrences
              .setString("step", "2");
          Get.offAllNamed(Approutes.homepage);
        } else if (responce['status'] == "failure") {
          Get.defaultDialog(
              title: "Error", middleText: "Invalid Email or Password");
        }
      }
      update();
    } else {}
  }

  @override
  void onInit() {
    emailAddressTextController = TextEditingController();
    passwordTextController = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    globalKey.currentState!.dispose();
    emailAddressTextController.clear();
    passwordTextController.clear();
    super.dispose();
  }
}
