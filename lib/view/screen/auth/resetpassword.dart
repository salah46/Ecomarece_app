import 'package:ecomarce_app_project/controller/auth/resetpasswordcontroller.dart';
import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/core/constant/imagesconstant.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/continuebutton.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/cunstometexttitle.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/customeTextfield.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/customebodytext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});
  ResetPasswordController resetPasswordController =
      Get.put(ResetPasswordController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.white,
      appBar: AppBar(
        title: Text("Reset Code",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Appcolor.black)),
        centerTitle: true,
        backgroundColor: Appcolor.white,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 8),
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios,
                color: Appcolor.black,
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 300,
              child: Image.asset(AppImagesConstantes.resetpassword),
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomeTextTitlewidget(
              size: 30,
              text: 'Enter the new password',
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomeBodyText(body: "Pleease Enter The New Password Code "),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CustomeTextField(
                      icone: const Icon(Icons.lock_outline_rounded),
                      labeltext: "Password",
                      hintText: "Enter The Password",
                      textInputType: TextInputType.visiblePassword,
                      textEditingController: resetPasswordController.password),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomeTextField(
                      icone: const Icon(Icons.lock_outline_rounded),
                      labeltext: "Password",
                      hintText: "Confirm The Password",
                      textInputType: TextInputType.visiblePassword,
                      textEditingController: resetPasswordController.password),
                  const SizedBox(
                    height: 25,
                  ),
                  ContinueBottonWidget(
                      text: "Save",
                      onpressed: () {
                        resetPasswordController.toPageSucces();
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
