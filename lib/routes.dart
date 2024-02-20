// ignore_for_file: prefer_const_constructors

import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:ecomarce_app_project/view/screen/Onboarding.dart';
import 'package:ecomarce_app_project/view/screen/langchoose.dart';
import 'package:ecomarce_app_project/view/screen/login.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  Approutes.login: (p0) => Login(),
  Approutes.langchoose: (p0) => LangChoose(),
  Approutes.onboarding: (p0) => Onboarding(),
};
