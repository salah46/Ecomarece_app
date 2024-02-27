import 'package:ecomarce_app_project/core/class/statusrequest.dart';
import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:ecomarce_app_project/core/functions/handlingdata.dart';
import 'package:ecomarce_app_project/data/datasource/remote/checkmailforresetpassword.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordContrller extends GetxController {
  TextEditingController emailforgetTextContrller = TextEditingController();

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  StatusResquest statusResquest = StatusResquest.begin;

  CheckMailToResetPasswordData checkMailToResetPasswordData =
      CheckMailToResetPasswordData(Get.find());
  toVerifyCodePage() async {
    var formestate = globalKey.currentState;
    if (formestate!.validate()) {
      statusResquest = StatusResquest.laoding;

      update();
      print(emailforgetTextContrller.value.text);
      var responce = await checkMailToResetPasswordData.postData(
        emailforgetTextContrller.text,
      );

      statusResquest = handlingData(responce);
      //print(statusResquest.toString());
      if (StatusResquest.success == statusResquest) {
        if (responce['status'] == "success") {
          Get.offAllNamed(Approutes.verifyResetcode,
              arguments: {"email": emailforgetTextContrller.text});
        } else {
          Get.defaultDialog(title: "Error", middleText: "Invalid Email");
        }
      } else {
        Get.defaultDialog(middleText: statusResquest.toString());
      }
      update();
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
}
