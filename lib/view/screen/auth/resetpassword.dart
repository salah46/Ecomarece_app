// ignore_for_file: must_be_immutable

import 'package:ecomarce_app_project/controller/auth/resetpasswordcontroller.dart';
import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/core/constant/imagesconstant.dart';
import 'package:ecomarce_app_project/core/functions/validinput.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/continuebutton.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/cunstometexttitle.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/customeTextfield.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/customebodytext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});
  ResetPasswordController resetPasswordController =
      Get.put(ResetPasswordController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.white,
      appBar: AppBar(
        title: Text("48".tr,
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
              child: Image.asset(AppImagesConstantes.resetpassword),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomeTextTitlewidget(
              size: 30,
              text: '34'.tr,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomeBodyText(body: "34".tr),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: resetPasswordController.globalKey,
                child: Column(
                  children: [
                    CustomeTextField(
                      valide: (p0) {
                            return validInput(p0!, 10, 100, "password");
                          },
                          
                        icone: const Icon(Icons.lock_outline_rounded),
                        labeltext: "19".tr,
                        hintText: "13".tr,
                        textInputType: TextInputType.visiblePassword,
                        textEditingController: resetPasswordController.password),
                    const SizedBox(
                      height: 25,
                    ),
                    CustomeTextField(
                       valide: (p0) {
                            return validInput(p0!, 10, 100, "password");
                          },
                          
                        icone: const Icon(Icons.lock_outline_rounded),
                        labeltext: "35".tr,
                        hintText: "47".tr,
                        textInputType: TextInputType.visiblePassword,
                        textEditingController: resetPasswordController.password),
                    const SizedBox(
                      height: 25,
                    ),
                    ContinueBottonWidget(
                        text: "33".tr,
                        onpressed: () {
                          resetPasswordController.toPageSucces();
                        })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
