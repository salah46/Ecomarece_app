import 'package:ecomarce_app_project/core/class/statusrequest.dart';
import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:ecomarce_app_project/core/functions/handlingdata.dart';
import 'package:ecomarce_app_project/data/datasource/remote/verifydata.dart';
import 'package:get/get.dart';

class VerefySignUpCodeController extends GetxController {
  late String verifyCode;
  late VerifyData verifydata = VerifyData(Get.find());
StatusResquest statusResquest = StatusResquest.begin;  checkverfysignupCode() {}

  toSuccessSignUpPage(String verifycode) async {
    statusResquest = StatusResquest.laoding;

    var responce = await verifydata.postData(Get.arguments['email'],verifycode);

    statusResquest = handlingData(responce);
   
    if (StatusResquest.success == statusResquest) {
      if (responce['status'] == "success") {
        Get.offAllNamed(Approutes.successsignup);
      } else {
        Get.defaultDialog(title: "Error", middleText: "Invalid Verfication Code");
      }
      update();
    }

    //
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
