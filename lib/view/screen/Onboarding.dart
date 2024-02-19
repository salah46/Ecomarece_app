// ignore_for_file: prefer_const_constructors

import 'package:ecomarce_app_project/controller/onboardControlers/onBoardcontroller.dart';
import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/view/widget/onboard/continuebutton.dart';
import 'package:ecomarce_app_project/view/widget/onboard/skipButton.dart';
import 'package:ecomarce_app_project/view/widget/onboard/slider.dart';
import 'package:ecomarce_app_project/view/widget/onboard/thedots.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            Expanded(flex: 2, child: SliderOnboard()),
            Expanded(
                flex: 1,
                child: Column(
                  children:  [
                    SizedBox(
                      height: 40,
                    ),
                    TheDots(),
                    SizedBox(
                      height: 50,
                    ),
                    ContinueButton(),
                    SizedBox(
                      height: 20,
                    ),
                    SkipButton()
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
