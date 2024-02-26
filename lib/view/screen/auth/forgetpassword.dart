// ignore_for_file: must_be_immutable

import 'package:ecomarce_app_project/controller/auth/forgetpasswordcontroller.dart';
import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/core/constant/imagesconstant.dart';
import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:ecomarce_app_project/core/functions/validinput.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/continuebutton.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/cunstometexttitle.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/customeTextfield.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/customebodytext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordContrller controllerForgetpassword =
        Get.put(ForgetPasswordContrller());
    return Scaffold(
      backgroundColor: Appcolor.white,
      appBar: AppBar(
        title: Text("45".tr,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Appcolor.black)
                .copyWith(fontSize: 20)),
        centerTitle: true,
        backgroundColor: Appcolor.white,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 8),
          child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Appcolor.black,
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: Image.asset(AppImagesConstantes.checkmail),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomeTextTitlewidget(
              size: 30,
              text: '14'.tr,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomeBodyText(body: "29".tr),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: controllerForgetpassword.globalKey,
                child: Column(
                  children: [
                    CustomeTextField(
                       valide: (p0) {
                            return validInput(p0!, 10, 100, "email");
                          },
                          
                        textEditingController:
                            controllerForgetpassword.emailforgetTextContrller,
                        textInputType: TextInputType.emailAddress,
                        icone: const Icon(Icons.mail_outline_outlined),
                        labeltext: "18".tr,
                        hintText: "12".tr),
                    const SizedBox(
                      height: 50,
                    ),
                    ContinueBottonWidget(
                      text: "44".tr,
                      onpressed: () =>
                          controllerForgetpassword.toVerifyCodePage(),
                    ),
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
