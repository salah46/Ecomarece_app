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
    return CircleAvatar(
      radius: 33,
      backgroundColor: Appcolor.purple,
      child: IconButton(onPressed: () {
        print(controller.currentIndex);
        controller.next();
      }, icon: Obx(
        () {
          return Icon(
              controller.currentIndex.value == onbaordinglist.length - 1
                  ? Icons.check
                  : Icons.arrow_forward_ios_rounded,
              size: 30,
              color: Appcolor.white);
        },
      )),
    );
  }
}
