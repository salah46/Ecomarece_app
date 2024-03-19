// ignore_for_file: unnecessary_const, prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:ecomarce_app_project/apilinks.dart';
import 'package:ecomarce_app_project/controller/homepagecontroller.dart';
import 'package:ecomarce_app_project/controller/items_controller.dart';
import 'package:ecomarce_app_project/controller/items_controller.dart';
import 'package:ecomarce_app_project/controller/items_controller.dart';
import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/data/model/categoriesmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListCategoriesItems extends StatelessWidget {
  ItemsPageController controller = ItemsPageController();
  final String title;
  ListCategoriesItems({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: SizedBox(
              width: double.maxFinite,
              height: 50,
              child: GetBuilder<ItemsPageController>(builder: (controller) {
                return ListView.separated(
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
                      onTap: () =>print(""), // and here ignore this
                      categoriesModel:
                          CategoriesModel.fromJson(controller.categories[i]),
                    );
                  },
                );
              }),
            ))
      ],
    );
  }
}

class CategoriesList extends StatelessWidget {
  final void Function()? onTap;
  final CategoriesModel categoriesModel;
  const CategoriesList({super.key, required this.categoriesModel, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, //what you think if put goToItemsPage here
      child: SizedBox(
        child: Card(
          color: Appcolor.warmPearlGray,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(categoriesModel.categoerisName.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
