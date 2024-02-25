import 'package:ecomarce_app_project/core/class/statusrequest.dart';
import 'package:flutter/material.dart';

class HandlingDataView extends StatelessWidget {
  final StatusResquest statusResquest;
  final Widget widget;
  const HandlingDataView(
      {super.key, required this.statusResquest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusResquest == StatusResquest.laoding
        ? const Center(child: Text("Loading"))
        : statusResquest == StatusResquest.failure
            ? const Center(child: Text("Failure"))
            : statusResquest == StatusResquest.serverfailure
                ? const Center(child: Text("Failure"))
                : statusResquest == StatusResquest.offlinefailure
                    ? const Center(child: Text("Failure"))
                    : widget;
  }
}
