// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecomarce_app_project/controller/onboardControlers/onBoardcontroller.dart';
import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/view/widget/onboardwidget/continuebutton.dart';
import 'package:ecomarce_app_project/view/widget/onboardwidget/skipButton.dart';
import 'package:ecomarce_app_project/view/widget/onboardwidget/slider.dart';
import 'package:ecomarce_app_project/view/widget/onboardwidget/thedots.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:email_otp/email_otp.dart';


import '../../data/datasource/static/static.dart';

class Onboarding extends StatelessWidget {
  Onboarding({super.key});
  OnbaordController controller = Get.put(OnbaordController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            SkipButton(),
            Expanded(flex: 4, child: SliderOnboard()),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TheDots(),
                      ContinueButton(),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
