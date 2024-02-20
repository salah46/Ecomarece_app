import 'package:ecomarce_app_project/core/localization/transtaltions_Controller.dart';
import 'package:ecomarce_app_project/view/widget/language/langchoosewidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LangChoose extends StatelessWidget {
  LangChoose({super.key});
  AppTranslationsContoller contoller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Langchoosewidget()
    );
  }
}
