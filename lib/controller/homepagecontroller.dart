import 'package:ecomarce_app_project/core/class/statusrequest.dart';
import 'package:ecomarce_app_project/core/constant/routes.dart';
import 'package:ecomarce_app_project/core/functions/handlingdata.dart';
import 'package:ecomarce_app_project/core/services/service.dart';
import 'package:ecomarce_app_project/data/datasource/remote/homedata.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Myservices services = Get.find();
  late String username =
      services.sharedPrefrences.getString('username').toString();

  HomeData homeData = HomeData(Get.find());
  List categories = [];
  List items = [];

  late StatusResquest statusResquest = StatusResquest.begin;

  getData() async {
    statusResquest = StatusResquest.laoding;
    var responce = await homeData.postData();
    statusResquest = handlingData(responce);
    if (statusResquest == StatusResquest.success) {
      if (responce['status'] == 'success') {
        categories.addAll(responce['categories']);
        items.addAll(responce['items']);
      } else {
        statusResquest = StatusResquest.failure;
      }
    }
    update();
  }

  goToItemsPage(List categories, int selectedCategory) {
    Get.toNamed(Approutes.itemspage, arguments: {
      "selectedCategory": selectedCategory,
      "categories": categories
    });
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
