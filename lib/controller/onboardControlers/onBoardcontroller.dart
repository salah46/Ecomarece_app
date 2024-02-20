import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:ecomarce_app_project/data/datasource/static/static.dart';
import 'package:ecomarce_app_project/view/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnbaordController extends GetxController {
  RxInt currentIndex = 0.obs;
  late PageController pageController;

  next() {
    currentIndex++;
    if (currentIndex > onbaordinglist.length - 1) {
      Get.offAllNamed(Approutes.login);
    }
    pageController.animateToPage(currentIndex.value,
        duration: Duration(milliseconds: 900), curve: Curves.ease);
  }

  onchanged(int val) {
    currentIndex.value = val;
    if (currentIndex > onbaordinglist.length) {
      Get.to(() => Login());
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    pageController = PageController();
    super.onInit();
  }
}
