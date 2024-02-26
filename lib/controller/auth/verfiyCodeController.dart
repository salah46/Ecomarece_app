import 'package:ecomarce_app_project/core/class/statusrequest.dart';
import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:ecomarce_app_project/core/functions/handlingdata.dart';
import 'package:ecomarce_app_project/data/datasource/remote/verifyresetcode.dart';
import 'package:get/get.dart';

class VerefyController extends GetxController {
  late String verifyCode;
  
  StatusResquest? statusResquest;
  
  VerifyResetCodeData verifydata = VerifyResetCodeData(Get.find());

  toResetPage(String verificationCode)async {
    statusResquest = StatusResquest.laoding;

    var responce = await verifydata.postData(Get.arguments['email'],verificationCode);

    statusResquest = handlingData(responce);
   
    if (StatusResquest.success == statusResquest) {
      if (responce['status'] == "success") {
        Get.offAllNamed(Approutes.resetpassword,arguments: {
          "email":Get.arguments['email']
        });
      } else {
        Get.defaultDialog(title: "Error", middleText: "Invalid Verfication Code");
      }
      update();
    }

  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
