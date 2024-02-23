import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "Username is not valid";
    }
  }

  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "Email is not valid";
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "Phonenumber not valid";
    }
  }
  if (val.isEmpty) {
    return "the field must be more than or equal $min";
  }
  if (val.length > max) {
    return "the field must be less than or equal $max";
  }
  if (val.length < min) {
    return "the field must be great than or equal $min";
  }
}
