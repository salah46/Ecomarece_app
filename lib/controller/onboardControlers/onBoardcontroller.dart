import 'package:ecomarce_app_project/data/datasource/static/static.dart';
import 'package:ecomarce_app_project/view/screen/Onboarding.dart';
import 'package:ecomarce_app_project/view/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnbaordController extends GetxController {
  int currentIndex = 0;
  late PageController pageController;

  next() {
    currentIndex++;
    if (currentIndex > onbaordinglist.length-1) {
      Get.to(() => Login());
    }
    pageController.animateToPage(currentIndex,
        duration: Duration(seconds: 1), curve: Curves.ease);
  }

  onchanged(int val) {
    currentIndex = val;
    if (currentIndex > onbaordinglist.length) {
      Get.to(() => Login());
    }
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    pageController = PageController();
    super.onInit();
  }
}
