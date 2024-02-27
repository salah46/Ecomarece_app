import 'package:ecomarce_app_project/core/services/service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppTranslationsContoller extends GetxController {
  Myservices service = Get.find();

  late Locale initlang = service.sharedPrefrences.getString("lang") == null
      ? Locale(Get.deviceLocale!.languageCode)
      : Locale(service.sharedPrefrences.getString("lang").toString());

  changeLanguage(String lang) {
    initlang = Locale(lang);
    service.sharedPrefrences.setString('lang', lang);
    Get.updateLocale(initlang);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
