import 'dart:io';

checkInternet() async {
  print("checkinternet beign");
  try {
    var result = await InternetAddress.lookup("google.com");
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    }
  } on SocketException catch (_) {
    print("SocketZxec");
    return false;
  }
  ;
}
