import 'package:ecomarce_app_project/core/class/statusrequest.dart';
import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:ecomarce_app_project/core/functions/handlingdata.dart';
import 'package:ecomarce_app_project/data/datasource/remote/signupdata.dart';
import 'package:ecomarce_app_project/view/screen/auth/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  late TextEditingController userTextController;

  late TextEditingController phoneTextController;

  late TextEditingController emailSignUpTextController;

  late TextEditingController passwordSignUpTextController;

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  StatusResquest? statusResquest;

  SignupData testData = SignupData(Get.find());

  List data = [];
  signUp() async {
    var formestate = globalKey.currentState;
    if (formestate!.validate()) {
      statusResquest = StatusResquest.laoding;
      update();
      print("================**" + statusResquest.toString());
      print(userTextController.value.text);
      var responce = await testData.postData(
          userTextController.text,
          passwordSignUpTextController.text,
          emailSignUpTextController.text,
          phoneTextController.text);

      statusResquest = handlingData(responce);
      print(statusResquest.toString());
      if (StatusResquest.success == statusResquest) {
        if (responce['status'] == "success") {
          Get.offNamed(Approutes.verifysignupcode, arguments: {
            "email": emailSignUpTextController.text,
          });
        } else {
          Get.defaultDialog(
              title: "Error", middleText: "Invalid phone or email");
        }
      } else {
        Get.defaultDialog(middleText: statusResquest.toString());
      }
      update();
    } else {}
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

  @override
  void dispose() {
    userTextController.clear();
    phoneTextController.clear();
    emailSignUpTextController.clear();
    passwordSignUpTextController.clear();
    super.dispose();
  }
}
