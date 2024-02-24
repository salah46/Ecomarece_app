import 'package:ecomarce_app_project/core/class/statusrequest.dart';

handlingData(responce) {
  if (responce is StatusResquest) {
    return responce;
  } else {
    return StatusResquest.success;
  }
}
