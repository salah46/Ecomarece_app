// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:draggable_home/draggable_home.dart';
import 'package:ecomarce_app_project/controller/homepagecontroller.dart';
import 'package:ecomarce_app_project/core/class/handlingdataview.dart';
import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/core/constant/imagesconstant.dart';
import 'package:ecomarce_app_project/view/widget/homewidgets/body.dart';
import 'package:ecomarce_app_project/view/widget/homewidgets/buttons.dart';
import 'package:ecomarce_app_project/view/widget/homewidgets/headerbottomwidget.dart';
import 'package:ecomarce_app_project/view/widget/homewidgets/headerwidget.dart';
import 'package:ecomarce_app_project/view/widget/homewidgets/searchprouducttextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return GetBuilder<HomeController>(builder: (controller) {
      return HandlingDataView(controller.statusResquest,
          widget: DraggableHome(
            drawer: Icon(Icons.menu),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(right: 10.0, left: 8),
                  child: SizedBox(
                    width: 50,
                    child: SearchProductBar(),
                  ),
                )),
                ButtonIcon(
                  icon: const Icon(Icons.shopping_cart_outlined),
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 10,
                ),
                ButtonIcon(
                  icon: const Icon(Icons.notifications_none_rounded),
                  onPressed: () {},
                )
              ],
            ),
            headerWidget: Headerwidget(username: controller.username),
            headerBottomBar: HeaderBottomWidget(),
            body: [
              Body(),
            ],
            alwaysShowLeadingAndAction: true,
            centerTitle: true,
            fullyStretchable: true,
            expandedBody: Container(
              width: double.infinity,
              height: 200, // Adjust the height as needed
              child: Placeholder(),
            ),
            backgroundColor: Colors.white,
            appBarColor: Appcolor.sereneBlue,
          ));
    });
  }
}
