import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecomarce_app_project/core/class/statusrequest.dart';
import 'package:ecomarce_app_project/core/functions/checkinternet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusResquest, Map>> postData(String linkurl, Map data) async {
    try {
      if (await checkInternet()) {
        var resposnce = await http.post(Uri.parse(linkurl), body: data);
        if (resposnce.statusCode == 200 || resposnce.statusCode == 201) {
          Map responcebody = jsonDecode(resposnce.body);
          return Right(responcebody);
        } else {
          return const Left(StatusResquest.serverfailure);
        }
      } else {
        return const Left(StatusResquest.offlinefailure);
      }
    } catch (_) {
      return const Left(StatusResquest.serverexeception);
    }
  }
}
