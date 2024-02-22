// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/core/constant/imagesconstant.dart';
import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:ecomarce_app_project/core/localization/transtaltions_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Langchoosewidget extends StatelessWidget {
  Langchoosewidget({super.key});
  AppTranslationsContoller contoller = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Spacer(
          flex: 6,
        ),
        Container(
          width: 360,
          height: 340,
          child: Image.asset(AppImagesConstantes.langchooseimage),
        ),
        Spacer(
          flex: 1,
        ),
        Text(
          "1".tr,
          style:
              Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 30),
        ),
        Spacer(
          flex: 1,
        ),
        Container(
          width: 200,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Appcolor.purple,
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(40.0), // Horizontal radius for left corners
              right:
                  Radius.circular(40.0), // Horizontal radius for right corners
            ),
          ),
          child: MaterialButton(
              onPressed: () {
                contoller.changeLanguage("ar");
                Get.toNamed(Approutes.onboarding);
              },
              child: Text(
                "Ar",
                style: TextStyle(color: Appcolor.white, fontSize: 17),
              )),
        ),
        Spacer(
          flex: 1,
        ),
        Container(
          width: 200,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Appcolor.purple,
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(40.0), // Horizontal radius for left corners
              right:
                  Radius.circular(40.0), // Horizontal radius for right corners
            ),
          ),
          child: MaterialButton(
              onPressed: () {
                contoller.changeLanguage("en");
                Get.toNamed(Approutes.onboarding);
              },
              child: Text(
                "En",
                style: TextStyle(color: Appcolor.white, fontSize: 17),
              )),
        ),
        Spacer(
          flex: 11,
        ),
      ]),
    ));
  }
}
