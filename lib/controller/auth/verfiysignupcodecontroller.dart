import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:get/get.dart';

class VerefySignUpCodeController extends GetxController {
  late String verifyCode;
  checkverfysignupCode() {}

  toSuccessSignUpPage() {
    Get.toNamed(Approutes.successsignup);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
