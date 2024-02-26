// ignore_for_file: must_be_immutable

import 'package:ecomarce_app_project/controller/auth/verfiyCodeController.dart';
import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/core/constant/imagesconstant.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/cunstometexttitle.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/customebodytext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyResetCode extends StatelessWidget {
  VerifyResetCode({super.key});
  VerefyController controllerVerfiCode = Get.put(VerefyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.white,
      appBar: AppBar(
        title: Text("30".tr,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Appcolor.black)),
        centerTitle: true,
        backgroundColor: Appcolor.white,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 8),
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios,
                color: Appcolor.black,
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 300,
              child: Image.asset(AppImagesConstantes.verify),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomeTextTitlewidget(
              size: 30,
              text: '49'.tr,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomeBodyText(body: "50".tr),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  OtpTextField(
                    keyboardType: TextInputType.phone,
                    borderRadius: BorderRadius.circular(100),
                    enabledBorderColor: const Color.fromRGBO(255, 137, 17, 100),
                    numberOfFields: 5,
                    borderColor: const Color(0xFF7F27FF),
                    fieldWidth: 50,
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode) {
                      controllerVerfiCode.toResetPage(verificationCode);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
