// ignore_for_file: must_be_immutable

import 'package:ecomarce_app_project/controller/auth/forgetpasswordcontroller.dart';
import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/core/constant/imagesconstant.dart';
import 'package:ecomarce_app_project/core/constant/routes.dart';
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
        title: Text("Password Recovery",
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
            const CustomeTextTitlewidget(
              size: 30,
              text: 'Forget Password',
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomeBodyText(
                body:
                    "Pleease Enter Your Email To Recieve\n a Verfication Code "),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CustomeTextField(
                      textEditingController:
                          controllerForgetpassword.emailforgetTextContrller,
                      textInputType: TextInputType.emailAddress,
                      icone: const Icon(Icons.mail_outline_outlined),
                      labeltext: "Email",
                      hintText: "Enter Your Email"),
                  const SizedBox(
                    height: 50,
                  ),
                  ContinueBottonWidget(
                    text: "Send",
                    onpressed: () => controllerForgetpassword.toVerifyCodePage(),
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
