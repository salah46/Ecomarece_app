import 'package:ecomarce_app_project/core/class/statusrequest.dart';
import 'package:ecomarce_app_project/core/functions/handlingdata.dart';
import 'package:ecomarce_app_project/data/datasource/remote/testdata.dart';
import 'package:get/get.dart';

class TestContrller extends GetxController {
  TestData testData = TestData(Get.find());
  List data = [];

  late StatusResquest statusResquest;

  getData() async {
    print("object");
    statusResquest = StatusResquest.laoding;
    print(statusResquest.toString());
    var responce = await testData.getData();
    print(responce.toString());
    statusResquest = handlingData(responce);
    print(statusResquest);
    if (statusResquest == StatusResquest.success) {
      print("===========================$data");
      data.addAll(responce['data']);
      print("===========================$data");
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
