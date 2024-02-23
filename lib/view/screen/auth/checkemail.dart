import 'package:ecomarce_app_project/controller/auth/checkemailconroller.dart';
import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/core/constant/imagesconstant.dart';
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
        title: Text("Check Email",
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
            const CustomeTextTitlewidget(
              size: 30,
              text: 'SignUp Success',
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomeBodyText(
                body:
                    "Pleease Enter Your E-mail To Recieve \nThe Verfication Code"),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CustomeTextField(
                      icone: Icon(Icons.mail_outline_outlined),
                      labeltext: "Email",
                      hintText: "Enter Your Email",
                      textInputType: TextInputType.emailAddress,
                      textEditingController:
                          checkEmailController.checkmailTextController),
                  const SizedBox(
                    height: 30,
                  ),
                  ContinueBottonWidget(
                    text: "Check",
                    onpressed: () => checkEmailController.goTosuccessSignup(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
