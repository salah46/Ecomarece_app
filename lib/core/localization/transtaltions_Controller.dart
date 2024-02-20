import 'package:ecomarce_app_project/core/services/service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppTranslationsContoller extends GetxController {
  Myservices service = Get.find();

  late Locale initlang = service.shredPrefrences.getString("lang") == null
        ? Locale(Get.deviceLocale!.languageCode)
        : Locale(service.shredPrefrences.getString("lang").toString());

  changeLanguage(String lang) {
    initlang = Locale(lang);
    service.shredPrefrences.setString('lang', lang);
    Get.updateLocale(initlang);
  }

  @override
  void onInit() {
   
    super.onInit();
  }
}
