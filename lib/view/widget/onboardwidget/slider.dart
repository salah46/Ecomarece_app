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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PageView.builder(
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.onchanged(value);
        },
        itemCount: onbaordinglist.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                child: Image.asset(onbaordinglist[index].image,
                    fit: BoxFit.cover, height: 420, width: 380),
              ),
              SizedBox(
                height: 25,
              ),
              Text(onbaordinglist[index].title.tr,
                  style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(
                height: 30,
              ),
              Text(onbaordinglist[index].body.tr,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge)
            ],
          );
        },
      ),
    );
    // },
  }
}
