import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:ecomarce_app_project/view/screen/auth/checkemail.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CheckEmailController extends GetxController {
  late TextEditingController checkmailTextController;

  checkEmail() {}

  goTosuccessSignup() {
    Get.offAllNamed(Approutes.successsignup);
  }

  @override
  void onInit() {
    checkmailTextController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    checkmailTextController.clear();
    super.dispose();
  }
}
