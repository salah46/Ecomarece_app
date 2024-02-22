import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:ecomarce_app_project/data/datasource/static/static.dart';
import 'package:ecomarce_app_project/view/screen/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnbaordController extends GetxController {
  RxInt currentIndex = 0.obs;
  late PageController pageController;

  next() {
    currentIndex++;
    if (currentIndex > onbaordinglist.length - 1) {
      Get.offNamed(Approutes.login);
    }
    pageController.animateToPage(currentIndex.value,
        duration: Duration(milliseconds: 900), curve: Curves.ease);
  }

  onchanged(int val) {
    currentIndex.value = val;
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
