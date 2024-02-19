// ignore_for_file: prefer_const_constructors

import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/view/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0),
      child: MaterialButton(
        onPressed: () {
          Get.to(()=>Login());
        },
        child: Text(
          "Skip",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Appcolor.purple,
          ),
        ),
      ),
    );
  }
}
