import 'package:ecomarce_app_project/controller/auth/test_controller.dart';
import 'package:ecomarce_app_project/core/class/statusrequest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    TestContrller testContrller = Get.put(TestContrller());
    return Scaffold(
      appBar: AppBar(
        title: Text("data View"),
      ),
      body: GetBuilder<TestContrller>(builder: (controller) {
        if (testContrller.statusResquest == StatusResquest.laoding) {
          return Center(child: Text("Loading"));
        } else if (testContrller.statusResquest == StatusResquest.failure) {
          return Center(child: Text("Failure"));
        } else {
          return ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Text("${testContrller.data}");
            },
          );
        }
      }),
    );
  }
}
