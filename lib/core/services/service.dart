import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Myservices extends GetxService {
  late SharedPreferences shredPrefrences;

  Future <Myservices>init() async {
    shredPrefrences = await SharedPreferences.getInstance();
    return this;
  }

  initServices() async {
    await Get.putAsync(() => Myservices().init());
  }
}
