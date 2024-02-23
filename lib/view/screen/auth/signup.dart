// ignore_for_file: prefer_const_constructors

import 'package:ecomarce_app_project/controller/auth/signupcontroller.dart';
import 'package:ecomarce_app_project/core/constant/color.dart';
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
        title: Text("Sign Up",
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
              text: 'Let\'s Create Your Account ',
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CustomeTextField(
                      textEditingController:
                          controllerSignup.userTextController,
                      textInputType: TextInputType.text,
                      icone: Icon(Icons.person_outline_outlined),
                      labeltext: "Username",
                      hintText: "Enter Your Username"),
                  SizedBox(
                    height: 30,
                  ),
                  CustomeTextField(
                      textEditingController:
                          controllerSignup.phoneTextController,
                      textInputType: TextInputType.emailAddress,
                      icone: Icon(Icons.phone_android_outlined),
                      labeltext: "Phone",
                      hintText: "Enter Your Phone Number"),
                  SizedBox(
                    height: 30,
                  ),
                  CustomeTextField(
                      textEditingController:
                          controllerSignup.emailSignUpTextController,
                      textInputType: TextInputType.emailAddress,
                      icone: Icon(Icons.mail_outline_rounded),
                      labeltext: "Email",
                      hintText: "Enter Your Email"),
                  SizedBox(
                    height: 30,
                  ),
                  CustomeTextField(
                      textEditingController:
                          controllerSignup.passwordSignUpTextController,
                      textInputType: TextInputType.visiblePassword,
                      icone: Icon(Icons.lock_outline_rounded),
                      labeltext: "Password",
                      hintText: "Enter Your Password"),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  ContinueBottonWidget(
                    text: "Sign Up",
                    onpressed: () => controllerSignup.signUp(),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  OtherWaySignIn(),
                  SizedBox(
                    height: 20,
                  ),
                  CustomeBottom(
                    text1: "Have an account? ",
                    text2: "Sign in",
                    ontap: () => controllerSignup.toLogInPage(),
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
