// ignore_for_file: prefer_const_constructors

import 'package:ecomarce_app_project/controller/onboardControlers/onBoardcontroller.dart';
import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContinueButton extends StatelessWidget {
  ContinueButton({super.key});
  OnbaordController controller = Get.put(OnbaordController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Appcolor.purple,
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(40.0), // Horizontal radius for left corners
          right: Radius.circular(40.0), // Horizontal radius for right corners
        ),
      ),
      child: MaterialButton(onPressed: () {
        print(controller.currentIndex);
        controller.next();
      }, child:Obx(
        () {
          return Text(
            controller.currentIndex.value == onbaordinglist.length-1
                ? "Finish"
                : "Continue",
            style: TextStyle(color: Appcolor.white),
          );
        },
      )),
    );
  }
}
