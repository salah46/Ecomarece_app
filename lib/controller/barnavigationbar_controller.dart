import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/view/screen/auth/signup.dart';
import 'package:ecomarce_app_project/view/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';

class BarNavigationController extends GetxController {
  int currentIndex = 0;

  List<BottomBarItem> items = [
    BottomBarItem(
        borderColor: Appcolor.sereneBlue,
        icon: const Icon(Icons.home_outlined),
        title: const Text('Home'),
        selectedColor: Appcolor.sereneBlue),
    BottomBarItem(
        borderColor: Appcolor.sereneBlue,
        icon: const Icon(Icons.favorite_border_outlined),
        title: const Text('Favorites'),
        selectedColor: Appcolor.sereneBlue),
    BottomBarItem(
        borderColor: Appcolor.sereneBlue,
        icon: const Icon(Icons.person_outline),
        title: const Text('Profile'),
        selectedColor: Appcolor.sereneBlue),
    BottomBarItem(
        borderColor: Appcolor.sereneBlue,
        icon: const Icon(Icons.settings_outlined),
        title: const Text('Settings'),
        selectedColor: Appcolor.sereneBlue),
  ];
  List<Widget> screens = [
    HomePage(),
    const SignUp(),
    const Center(child: Text("2")),
    const Center(child: Text("3"))
  ];

  changeIndex(int value) {
    currentIndex = value;
    update();
  }
}
