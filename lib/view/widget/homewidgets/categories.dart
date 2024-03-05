// ignore_for_file: unnecessary_const, prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:dartz/dartz.dart';
import 'package:ecomarce_app_project/apilinks.dart';
import 'package:ecomarce_app_project/controller/homepagecontroller.dart';
import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/data/model/categoriesmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Categories extends StatelessWidget {
  final String title;
  Categories({super.key, required this.title});
  HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Column(
        children: [
          //==========================
          //      The title
          //==========================
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ],
          ),
          //==========================
          //      The categories display
          //==========================
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
                    return CategoriesList(
                      onTap: () => print(controller.categories[i]),
                      categoriesModel:
                          CategoriesModel.fromJson(controller.categories[i]),
                    );
                  },
                ),
              ))
        ],
      );
    });
  }
}

class CategoriesList extends StatelessWidget {
  final void Function()? onTap;
  final CategoriesModel categoriesModel;
  const CategoriesList({super.key, required this.categoriesModel, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: SizedBox(
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
                  "${Applinks.images}${categoriesModel.categoriesImage}"),
              Text(categoriesModel.categoerisName.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
