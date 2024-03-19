import 'package:get/get.dart';

class ItemsPageController extends GetxController {
  List categories = Get.arguments("categories");
  int selectedItem = Get.arguments("selectedCategory");

  @override
  void onInit() {}
}
