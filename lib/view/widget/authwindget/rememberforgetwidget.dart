import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RememberForgetWidget extends StatelessWidget {
  RememberForgetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(value: false, onChanged: (val) {}),
            Text("42".tr)
          ],
        ),
        InkWell(
          child: Text(
            "14".tr,
            style: TextStyle(decoration: TextDecoration.underline),
          ),
          onTap: () {
            Get.toNamed(Approutes.forget);
          },
        )
      ],
    );
  }
}
