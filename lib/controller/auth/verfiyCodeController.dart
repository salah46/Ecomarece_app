import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:get/get.dart';

class VerefyController extends GetxController {
  late String verifyCode;
  checkverfyCode() {}

  toResetPage() {
    Get.offNamed(Approutes.resetpassword);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
