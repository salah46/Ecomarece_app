// ignore_for_file: unnecessary_const, prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:ecomarce_app_project/apilinks.dart';
import 'package:ecomarce_app_project/controller/homepagecontroller.dart';
import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Categories extends StatelessWidget {
  Categories({super.key});
  HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
                child: Text(
                  "Categories",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: double.maxFinite,
                height: 110,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                  shrinkWrap: true,
                  //  physics: NeverScrollableScrollPhysics(), // Disable scrolling
                  itemCount: controller.categories
                      .length, // Set itemCount to 1 as you have a single row
                  itemBuilder: (BuildContext context, int i) {
                    return SizedBox(
                      height: 70,
                      width: 100,
                      child: Card(
                        shape: CircleBorder(),
                        color: Appcolor.warmPearlGray,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.network(
                                width: 50,
                                fit: BoxFit.contain,
                                "${Applinks.images}/${controller.categories[i]['categoeris_name']}.svg"),
                            Text(controller.categories[i]['categoeris_name']),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ))
        ],
      );
    });
  }
}
