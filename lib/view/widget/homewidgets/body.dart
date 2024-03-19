// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:flutter/material.dart';

import 'categories.dart';
import 'items.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Appcolor.warmPearlGray,
      child: Column(
        children: [
          CategoriesHome(
            title: 'Categories',
          ),
          ItemsHome(
            title: "Offers for you",
          )
        ],
      ),
    );
  }
}
