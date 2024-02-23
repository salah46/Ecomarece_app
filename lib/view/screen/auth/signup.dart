// ignore_for_file: prefer_const_constructors

import 'package:ecomarce_app_project/controller/auth/signupcontroller.dart';
import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/core/functions/validinput.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/cunstometexttitle.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/customeBottom.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/customeTextfield.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/continuebutton.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/otherwayslogin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpController controllerSignup = Get.put(SignUpController());
    return Scaffold(
      backgroundColor: Appcolor.white,
      appBar: AppBar(
        title: Text("17".tr,
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
              height: 50,
            ),
            CustomeTextTitlewidget(
              size: 30,
              text: "46".tr,
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key:controllerSignup.globalKey,
                child: Column(
                  children: [
                    CustomeTextField(
                        
                        valide: (p0) {
                          return validInput(p0!, 10, 100, "username");
                        },
                        textEditingController:
                            controllerSignup.userTextController,
                        textInputType: TextInputType.text,
                        icone: Icon(Icons.person_outline_outlined),
                        labeltext: "20".tr,
                        hintText: "23".tr),
                    SizedBox(
                      height: 30,
                    ),
                    CustomeTextField(
                        
                        valide: (p0) {
                          return validInput(p0!, 10, 100, "phone");
                        },
                        textEditingController:
                            controllerSignup.phoneTextController,
                        textInputType: TextInputType.emailAddress,
                        icone: Icon(Icons.phone_android_outlined),
                        labeltext: "21".tr,
                        hintText: "22".tr),
                    SizedBox(
                      height: 30,
                    ),
                    CustomeTextField(
                        
                        valide: (p0) {
                          return validInput(p0!, 10, 100, "email");
                        },
                        textEditingController:
                            controllerSignup.emailSignUpTextController,
                        textInputType: TextInputType.emailAddress,
                        icone: Icon(Icons.mail_outline_rounded),
                        labeltext: "18".tr,
                        hintText: "12".tr),
                    SizedBox(
                      height: 30,
                    ),
                    CustomeTextField(
                        
                        valide: (p0) {
                          return validInput(p0!, 10, 100, "password");
                        },
                        textEditingController:
                            controllerSignup.passwordSignUpTextController,
                        textInputType: TextInputType.visiblePassword,
                        icone: Icon(Icons.lock_outline_rounded),
                        labeltext: "19".tr,
                        hintText: "13".tr),
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    ContinueBottonWidget(
                      text: "17".tr,
                      onpressed: () => controllerSignup.signUp(),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    OtherWaySignIn(),
                    SizedBox(
                      height: 20,
                    ),
                    CustomeBottom(
                      text1: "25".tr,
                      text2: "26".tr,
                      ontap: () => controllerSignup.toLogInPage(),
                    )
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
