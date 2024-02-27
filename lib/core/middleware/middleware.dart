import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:ecomarce_app_project/core/services/service.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/route_manager.dart';

class MiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;

  Myservices services = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (services.sharedPrefrences.getString("step") == "2") {
      return RouteSettings(name: Approutes.homepage);
    }
    if (services.sharedPrefrences.getString("step") == "1") {
      return RouteSettings(name: Approutes.login);
    }
  }
}
