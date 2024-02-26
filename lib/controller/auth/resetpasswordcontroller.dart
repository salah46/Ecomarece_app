import 'package:ecomarce_app_project/core/class/statusrequest.dart';
import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:ecomarce_app_project/core/functions/handlingdata.dart';
import 'package:ecomarce_app_project/data/datasource/remote/resetpassowrd.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController {
  late TextEditingController password;

  late TextEditingController repassword;

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  StatusResquest? statusResquest = StatusResquest.laoding;

  ResetPasswordData verifydata = ResetPasswordData(Get.find());

  toPageSucces() async {
    var formestate = globalKey.currentState;
    if (formestate!.validate()) {
      if (password.text == repassword.text) {
        statusResquest = StatusResquest.laoding;

        var responce =
            await verifydata.postData(Get.arguments['email'], repassword.text);

        statusResquest = handlingData(responce);

        if (StatusResquest.success == statusResquest) {
          if (responce['status'] == "success") {
            Get.offAllNamed(Approutes.succesreset);
          } else {
            Get.defaultDialog(
                title: "Error", middleText: "Invalid Verfication Code");
          }
        }
      }
    } else {
      Get.dialog(
        Text("Not valid"),
      );
    }
    update();
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
