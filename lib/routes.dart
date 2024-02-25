// ignore_for_file: prefer_const_constructors

import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:ecomarce_app_project/core/middleware/middleware.dart';
import 'package:ecomarce_app_project/view/screen/Onboarding.dart';
import 'package:ecomarce_app_project/view/screen/auth/resetpassword.dart';
import 'package:ecomarce_app_project/view/screen/auth/signup.dart';
import 'package:ecomarce_app_project/view/screen/auth/successreset.dart';
import 'package:ecomarce_app_project/view/screen/auth/verfiysignupcode.dart';
import 'package:ecomarce_app_project/view/screen/auth/verifycode.dart';
import 'package:ecomarce_app_project/view/screen/langchoose.dart';
import 'package:ecomarce_app_project/view/screen/auth/login.dart';
import 'package:flutter/material.dart';
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
  GetPage(name: Approutes.verifycode, page: () => VerifyCode()),
  GetPage(name: Approutes.resetpassword, page: () => ResetPassword()),
  GetPage(name: Approutes.succesreset, page: () => SuccessReset()),
  GetPage(name: Approutes.successsignup, page: () => SuccessSignup()),
  GetPage(name: Approutes.verifysignupcode, page: () => VerifySignupCode()),
  // Add more pages as needed
];
Map<String, Widget Function(BuildContext)> routes = {
  Approutes.login: (p0) => Login(),
  Approutes.langchoose: (p0) => LangChoose(),
  Approutes.onboarding: (p0) => Onboarding(),
  Approutes.signup: (p0) => SignUp(),
  Approutes.forget: (p0) => ForgetPassword(),
  Approutes.verifycode: (p0) => VerifyCode(),
  Approutes.resetpassword: (p0) => ResetPassword(),
  Approutes.succesreset: (p0) => SuccessReset(),
  Approutes.successsignup: (p0) => SuccessSignup(),
  Approutes.verifysignupcode: (p0) => VerifySignupCode()
};
