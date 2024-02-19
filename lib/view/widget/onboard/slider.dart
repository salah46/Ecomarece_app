// ignore_for_file: prefer_const_constructors

import 'package:ecomarce_app_project/controller/onboardControlers/onBoardcontroller.dart';
import 'package:ecomarce_app_project/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SliderOnboard extends StatelessWidget {
  SliderOnboard({super.key});

  OnbaordController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        print("${value} value change");

        controller.onchanged(value);
      },
      itemCount: onbaordinglist.length,
      itemBuilder: (context, index) {
        
        print("${index} hello ");
        return GetBuilder<OnbaordController>(
          builder: (controller) {
            index = controller.currentIndex;
            return Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Text(
                  onbaordinglist[index].title.toString(),
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Image.asset(
                      fit: BoxFit.fill,
                      height: 360,
                      width: 320,
                      onbaordinglist[index].image.toString()),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  onbaordinglist[index].body.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.blueGrey,
                      height: 2.0,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                )
              ],
            );
          },
        );
      },
    );
  }
}
