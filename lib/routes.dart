// ignore_for_file: prefer_const_constructors

import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:ecomarce_app_project/core/middleware/middleware.dart';
import 'package:ecomarce_app_project/view/screen/Onboarding.dart';
import 'package:ecomarce_app_project/view/screen/auth/resetpassword.dart';
import 'package:ecomarce_app_project/view/screen/auth/signup.dart';
import 'package:ecomarce_app_project/view/screen/auth/successreset.dart';
import 'package:ecomarce_app_project/view/screen/auth/verfiysignupcode.dart';
import 'package:ecomarce_app_project/view/screen/auth/verifyresetcode.dart';
import 'package:ecomarce_app_project/view/screen/homepage.dart';
import 'package:ecomarce_app_project/view/screen/itemspage.dart';
import 'package:ecomarce_app_project/view/screen/langchoose.dart';
import 'package:ecomarce_app_project/view/screen/auth/login.dart';
import 'package:get/get.dart';

import 'view/screen/auth/forgetpassword.dart';
import 'view/screen/auth/successsignup.dart';

List<GetPage<dynamic>>? getPages = [
  //GetPage(name: "/", page: () => TestView()),
  GetPage(name: "/", page: () => LangChoose(), middlewares: [MiddleWare()]),
  GetPage(name: Approutes.login, page: () => Login()),
  GetPage(name: Approutes.onboarding, page: () => Onboarding()),
  GetPage(name: Approutes.signup, page: () => SignUp()),
  GetPage(name: Approutes.forget, page: () => ForgetPassword()),
  GetPage(name: Approutes.verifyResetcode, page: () => VerifyResetCode()),
  GetPage(name: Approutes.resetpassword, page: () => ResetPassword()),
  GetPage(name: Approutes.succesreset, page: () => SuccessReset()),
  GetPage(name: Approutes.successsignup, page: () => SuccessSignup()),
  GetPage(name: Approutes.verifysignupcode, page: () => VerifySignupCode()),
  GetPage(name: Approutes.homepage, page: () => HomePage()),
  GetPage(name: Approutes.itemspage, page: () => Items()),
];
