import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/core/constant/imagesconstant.dart';
import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/continuebutton.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/cunstometexttitle.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/customebodytext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignup extends StatelessWidget {
  const SuccessSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 130,
              ),
              SizedBox(
                height: 300,
                child: Image.asset(AppImagesConstantes.done),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomeTextTitlewidget(
                size: 30,
                text: 'Done',
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomeBodyText(
                  body: "Go Now And Login With Your New Account"),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    ContinueBottonWidget(
                        text: "Login",
                        onpressed: () => Get.offAllNamed(Approutes.login))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
