// ignore_for_file: prefer_const_constructors

import 'package:ecomarce_app_project/controller/auth/logincontroller.dart';
import 'package:ecomarce_app_project/core/constant/color.dart';
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
  Login({super.key});
  @override
  Widget build(BuildContext context) {
    LoginController controller_login = Get.put(LoginController());

    return Scaffold(
      backgroundColor: Appcolor.white,
      appBar: AppBar(
        title: Text("Sign In",
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
            Logo(),
            CustomeTextTitlewidget(
              text: 'Welcome Back',
              size: 30,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomeBodyText(
                body:
                    "Sign in with your email and password or\n continue with social media"),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CustomeTextField(
                      textEditingController:
                          controller_login.emailAddressTextController,
                      textInputType: TextInputType.emailAddress,
                      icone: Icon(Icons.mail_outline_rounded),
                      labeltext: "Email",
                      hintText: "Enter Your Email"),
                  SizedBox(
                    height: 30,
                  ),
                  CustomeTextField(
                      textEditingController:
                          controller_login.passwordTextController,
                      textInputType: TextInputType.visiblePassword,
                      icone: Icon(Icons.lock_outline_rounded),
                      labeltext: "Password",
                      hintText: "Enter Your Password"),
                  SizedBox(
                    height: 25,
                  ),
                  RememberForgetWidget(),
                  SizedBox(
                    height: 25,
                  ),
                  ContinueBottonWidget(
                    text: "Sign In",
                    onpressed: () {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  OtherWaySignIn(),
                  SizedBox(
                    height: 20,
                  ),
                  CustomeBottom(
                    text1: "Don't have an account? ",
                    text2: "Sign Up",
                    ontap: () {
                      controller_login.toPageSignUp();
                      //print('go to signup');
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
