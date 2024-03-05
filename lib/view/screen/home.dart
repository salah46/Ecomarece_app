// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecomarce_app_project/controller/homepagecontroller.dart';
import 'package:ecomarce_app_project/core/class/handlingdataview.dart';
import 'package:ecomarce_app_project/view/widget/homewidgets/body.dart';
import 'package:ecomarce_app_project/view/widget/homewidgets/buttons.dart';
import 'package:ecomarce_app_project/view/widget/homewidgets/adspace.dart';
import 'package:ecomarce_app_project/view/widget/homewidgets/searchprouducttextfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return GetBuilder<HomeController>(builder: (controller) {
      return HandlingDataView(controller.statusResquest,
          widget: CustomScrollView(
            shrinkWrap: false,
            slivers: [
              SliverAppBar(
                pinned: true,
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SearchProductBar(
                        text: 'Find prouduct',
                        onTapSearch: () {},
                      ),
                      ButtonIcon(
                        icon: const Icon(Icons.notifications_none_rounded),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                expandedHeight: 320,
                floating: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: AdsSpace(username: "mohammed"),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate(<Widget>[
                Body(),
              ]))
            ],
          ));
    });
  }
}
