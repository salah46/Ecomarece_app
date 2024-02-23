import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:ecomarce_app_project/view/screen/auth/checkemail.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CheckEmailController extends GetxController {
  late TextEditingController checkmailTextController;

    GlobalKey<FormState> globalKey = GlobalKey<FormState>();


  checkEmail() {}

  goToVerifySignup() {
    var formestate = globalKey.currentState;
    if (formestate!.validate()) {
      Get.offAllNamed(Approutes.verifysignupcode);
    } else {
      Get.dialog(Text("Not valid"),);
    }
    
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
