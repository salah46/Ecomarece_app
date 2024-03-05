// ignore_for_file: prefer_const_constructors

import 'package:ecomarce_app_project/controller/barnavigationbar_controller.dart';
import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/view/widget/custome_bottombarnavigator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TheMain extends StatelessWidget {
  const TheMain({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BarNavigationController());
    return GetBuilder<BarNavigationController>(builder: (controller) {
      return Scaffold(
          drawer: Drawer(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Appcolor.goldenSunset,
            child: IconButton(
              icon: Icon(Icons.shopping_cart_outlined),
              onPressed: () {},
            ),
          ),
          body: controller.screens[controller.currentIndex],
          bottomNavigationBar: CustomeBottomBarNavigator());
    });
  }
}

