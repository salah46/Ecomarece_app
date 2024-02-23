import 'package:ecomarce_app_project/controller/auth/checkemailconroller.dart';
import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/core/constant/imagesconstant.dart';
import 'package:ecomarce_app_project/core/functions/validinput.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/continuebutton.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/cunstometexttitle.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/customeTextfield.dart';
import 'package:ecomarce_app_project/view/widget/authwindget/customebodytext.dart';
import 'package:ecomarce_app_project/view/widget/onboardwidget/continuebutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckEmail extends StatelessWidget {
  CheckEmail({super.key});
  CheckEmailController checkEmailController = Get.put(CheckEmailController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.white,
      appBar: AppBar(
        title: Text("27".tr,
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
              child: Image.asset(AppImagesConstantes.checkidmail),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomeTextTitlewidget(
              size: 28,
              text: '28'.tr,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomeBodyText(body: "29".tr),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: checkEmailController.globalKey,
                child: Column(
                  children: [
                    CustomeTextField(
                       valide: (p0) {
                            return validInput(p0!, 10, 100, "password");
                          },
                        icone: Icon(Icons.mail_outline_outlined),
                        labeltext: "18".tr,
                        hintText: "12".tr,
                        textInputType: TextInputType.emailAddress,
                        textEditingController:
                            checkEmailController.checkmailTextController),
                    const SizedBox(
                      height: 30,
                    ),
                    ContinueBottonWidget(
                      text: "30".tr,
                      onpressed: () => checkEmailController.goToVerifySignup(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
