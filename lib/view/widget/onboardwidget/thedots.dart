// ignore_for_file: prefer_const_constructors

import 'package:ecomarce_app_project/controller/onboardControlers/onBoardcontroller.dart';
import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TheDots extends StatelessWidget {
  const TheDots({super.key});

  @override
  Widget build(BuildContext context) {
    OnbaordController controller = Get.find();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(onbaordinglist.length, (index) {
          return Obx(() {
            return AnimatedContainer(
              decoration: BoxDecoration(
                color: Appcolor.purple,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(
                      40.0), // Horizontal radius for left corners
                  right: Radius.circular(
                      40.0), // Horizontal radius for right corners
                ),
              ),
              margin: EdgeInsets.symmetric(horizontal: 5),
              duration: Duration(milliseconds: 900),
              // ignore: unrelated_type_equality_checks
              width: controller.currentIndex == index ? 50 : 15,
              height: 5,
            );
          });
        })
      ],
    );
  }
}
