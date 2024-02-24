import 'package:ecomarce_app_project/core/class/crud.dart';
import 'package:get/instance_manager.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
  }
}
