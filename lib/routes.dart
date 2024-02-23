// ignore_for_file: prefer_const_constructors

import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:ecomarce_app_project/view/screen/Onboarding.dart';
import 'package:ecomarce_app_project/view/screen/auth/checkemail.dart';
import 'package:ecomarce_app_project/view/screen/auth/resetpassword.dart';
import 'package:ecomarce_app_project/view/screen/auth/signup.dart';
import 'package:ecomarce_app_project/view/screen/auth/successreset.dart';
import 'package:ecomarce_app_project/view/screen/auth/verifycode.dart';
import 'package:ecomarce_app_project/view/screen/langchoose.dart';
import 'package:ecomarce_app_project/view/screen/auth/login.dart';
import 'package:flutter/material.dart';

import 'view/screen/auth/forgetpassword.dart';
import 'view/screen/auth/successsignup.dart';

Map<String, Widget Function(BuildContext)> routes = {
  Approutes.login: (p0) => Login(),
  Approutes.langchoose: (p0) => LangChoose(),
  Approutes.onboarding: (p0) => Onboarding(),
  Approutes.signup: (p0) => SignUp(),
  Approutes.forget: (p0) => ForgetPassword(),
  Approutes.verifycode: (p0) => VerifyCode(),
  Approutes.resetpassword: (p0) => ResetPassword(),
  Approutes.succesreset :(p0) => SuccessReset(),
  Approutes.checkemail :(p0) => CheckEmail(),
  Approutes.successsignup :(p0) => SuccessSignup(),
};
