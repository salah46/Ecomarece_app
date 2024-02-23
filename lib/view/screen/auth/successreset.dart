import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/core/constant/imagesconstant.dart';
import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/continuebutton.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/cunstometexttitle.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/customebodytext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessReset extends StatelessWidget {
  const SuccessReset({super.key});

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
               CustomeTextTitlewidget(
                size: 30,
                text: '32'.tr,
              ),
              const SizedBox(
                height: 20,
              ),
               CustomeBodyText(
                  body: "36".tr),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    ContinueBottonWidget(
                        text: "31".tr,
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
