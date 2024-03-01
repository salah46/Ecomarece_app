// ignore_for_file: prefer_const_constructors

import 'package:ecomarce_app_project/controller/auth/logincontroller.dart';
import 'package:ecomarce_app_project/core/class/handlingdataview.dart';
import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/core/functions/validinput.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/cunstometexttitle.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/customeBottom.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/customeTextfield.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/customebodytext.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/continuebutton.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/logo.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/otherwayslogin.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/rememberforgetwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const  Login({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());

    return Scaffold(
      backgroundColor: Appcolor.white,
      appBar: AppBar(
        title: Text("9".tr,
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
      body: GetBuilder<LoginController>(builder: (controllerLogin) {
        return HandlingDataView(
          controllerLogin.statusResquest,
          widget: SingleChildScrollView(
            child: Column(
              children: [
                Logo(),
                CustomeTextTitlewidget(
                  text: '10'.tr,
                  size: 30,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomeBodyText(body: "11".tr),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: controllerLogin.globalKey,
                    child: Column(
                      children: [
                        CustomeTextField(
                            valide: (p0) {
                              return validInput(p0!, 10, 100, "email");
                            },
                            textEditingController:
                                controllerLogin.emailAddressTextController,
                            textInputType: TextInputType.emailAddress,
                            icone: Icon(Icons.mail_outline_rounded),
                            labeltext: "18".tr,
                            hintText: "12".tr),
                        SizedBox(
                          height: 30,
                        ),
                        Obx(() {
                          return CustomeTextField(
                              secure: controllerLogin.secure.value,
                              ontapicon: () => controllerLogin.securestate(),
                              valide: (p0) {
                                return validInput(p0!, 4, 100, "password");
                              },
                              textEditingController:
                                  controllerLogin.passwordTextController,
                              textInputType: TextInputType.visiblePassword,
                              icone: controllerLogin.secure.value == false
                                  ? Icon(Icons.lock_open_outlined)
                                  : Icon(Icons.lock_outline_rounded),
                              labeltext: "19".tr,
                              hintText: "13".tr);
                        }),
                        SizedBox(
                          height: 25,
                        ),
                        RememberForgetWidget(),
                        SizedBox(
                          height: 25,
                        ),
                        ContinueBottonWidget(
                          text: "9".tr,
                          onpressed: () {
                            controllerLogin.login();
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        OtherWaySignIn(),
                        SizedBox(
                          height: 20,
                        ),
                        CustomeBottom(
                          text1: "16".tr,
                          text2: "17".tr,
                          ontap: () {
                            controllerLogin.toPageSignUp();
                            //print('go to signup');
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
