// ignore_for_file: prefer_const_constructors
import 'package:ecomarce_app_project/Binding/initialbinding.dart';
import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/core/localization/transtaltions_Controller.dart';
import 'package:ecomarce_app_project/core/middleware/middleware.dart';
import 'package:ecomarce_app_project/core/services/service.dart';
import 'package:ecomarce_app_project/routes.dart';
import 'package:ecomarce_app_project/testview.dart';
import 'package:ecomarce_app_project/view/screen/auth/login.dart';
import 'package:ecomarce_app_project/view/screen/auth/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/localization/translations.dart';
import 'view/screen/auth/forgetpassword.dart';
import 'view/screen/auth/verifyresetcode.dart';
import 'view/screen/langchoose.dart';

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
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Appcolor.black,
          ),
          headlineLarge: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Appcolor.black,
          ),
          bodyLarge: TextStyle(
              color: Appcolor.black,
              height: 2.0,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        primarySwatch: Colors.deepPurple,
      ),
      getPages: getPages,
      initialBinding: InitialBinding(),
    );
  }
}
