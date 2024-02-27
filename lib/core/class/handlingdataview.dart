import 'package:ecomarce_app_project/controller/handligdataviewcontroller.dart';
import 'package:ecomarce_app_project/core/class/statusrequest.dart';
import 'package:ecomarce_app_project/core/constant/imagesconstant.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/continuebutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget {
  late StatusResquest statusResquest;
  final Widget widget;
  
  HandlingDataView(
    this.statusResquest, {
    Key? key,
    required this.widget,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Assuming HandlingDataViewController is your controller class
    Get.put(HandlingDataViewController());

    return GetBuilder<HandlingDataViewController>(
      builder: (controller) {
        if (statusResquest == StatusResquest.laoding) {
          return Center(child: Lottie.asset(AppImagesConstantes.loading));
        } else if (statusResquest == StatusResquest.serverfailure) {
          return Center(
            child: Column(
              children: [
                Lottie.asset(AppImagesConstantes.serverfailure),
                ContinueBottonWidget(
                  text: "Back",
                  onpressed: () {
                    statusResquest = controller.toBackPage(statusResquest);
                    controller.refresh();
                  },
                )
              ],
            ),
          );
        } else if (statusResquest == StatusResquest.offlinefailure) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("OffLine",
                    style: Theme.of(context).textTheme.displayMedium),
                Lottie.asset(AppImagesConstantes.offline),
                Padding(
                  padding: const EdgeInsets.only(top: 40, right: 40, left: 40),
                  child: ContinueBottonWidget(
                    text: "Back",
                    onpressed: () {
                      statusResquest = controller.toBackPage(statusResquest);
                      controller.refresh();
                    },
                  ),
                )
              ],
            ),
          );
        } else {
          return widget;
        }
      },
    );
  }
}
