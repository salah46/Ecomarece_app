// ignore_for_file: prefer_const_constructors

import 'package:ecomarce_app_project/controller/auth/skipbuttoncontroller.dart';
import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:ecomarce_app_project/core/services/service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SkipButton extends StatelessWidget {
  SkipButton({super.key});
  SkipButtonController skipbutoncontroller = Get.put(SkipButtonController());
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 0),
          child: MaterialButton(
            onPressed: () {
              skipbutoncontroller.goToPageLogin();
            },
            child: Text(
              "39".tr,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Appcolor.purple,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
