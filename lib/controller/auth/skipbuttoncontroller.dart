import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:ecomarce_app_project/core/services/service.dart';
import 'package:get/get.dart';

class SkipButtonController extends GetxController {
  Myservices services = Get.find();
  goToPageLogin() {
    services.shredPrefrences.setString("firsttime", "1");
    Get.offAllNamed(Approutes.login);
  }
}
