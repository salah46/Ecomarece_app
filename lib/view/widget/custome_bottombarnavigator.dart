import 'package:ecomarce_app_project/controller/barnavigationbar_controller.dart';
import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

@immutable
class CustomeBottomBarNavigator extends StatelessWidget {
  final BarNavigationController controller = Get.find();

  CustomeBottomBarNavigator({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BarNavigationController>(builder: (controller) {
      return StylishBottomBar(
          borderRadius: BorderRadius.circular(130),
          elevation: 20,
          fabLocation: StylishBarFabLocation.center,
          backgroundColor: Appcolor.warmPearlGray,
          hasNotch: true,
          currentIndex: controller.currentIndex,
          onTap: (value) {
            controller.changeIndex(value);
          },
          items: controller.items,
          option: AnimatedBarOptions(
              iconStyle: IconStyle.animated,
              barAnimation: BarAnimation.fade,
              iconSize: 30));
    });
  }
}