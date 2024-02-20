import 'package:ecomarce_app_project/core/localization/transtaltions_Controller.dart';
import 'package:ecomarce_app_project/core/services/service.dart';
import 'package:ecomarce_app_project/routes.dart';
import 'package:ecomarce_app_project/view/screen/Onboarding.dart';
import 'package:ecomarce_app_project/view/screen/langchoose.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/localization/translations.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Myservices().initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppTranslationsContoller contoller = Get.put(AppTranslationsContoller());
    return GetMaterialApp(
      translations: AppLanguages(),
      locale: contoller.initlang,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: TextStyle(
              color: Colors.blueGrey,
              height: 2.0,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        primarySwatch: Colors.blue,
      ),
      home: LangChoose(),
      routes: routes,
    );
  }
}
