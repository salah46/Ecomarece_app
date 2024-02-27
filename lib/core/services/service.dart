import 'package:ecomarce_app_project/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Myservices extends GetxService {
  late SharedPreferences sharedPrefrences;

  Future<Myservices> init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    var fireBaseMessagingInstance = FirebaseMessaging.instance;
    fireBaseMessagingInstance.requestPermission();
    fireBaseMessagingInstance.getToken().then((value) => print(value));

    sharedPrefrences = await SharedPreferences.getInstance();
    return this;
  }

  initServices() async {
    await Get.putAsync(() => Myservices().init());
  }
}
