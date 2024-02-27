import 'package:ecomarce_app_project/core/class/statusrequest.dart';
import 'package:get/get.dart';

class HandlingDataViewController extends GetxController {
  StatusResquest toBackPage(StatusResquest statusResquest) {
    statusResquest = StatusResquest.begin;
    return statusResquest;
  }

  refrech() {
    update();
  }
}
