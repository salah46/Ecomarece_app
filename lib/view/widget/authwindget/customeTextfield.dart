import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomeTextField extends StatelessWidget {
  final Icon icone;
  final String labeltext;
  final String hintText;
  final TextInputType textInputType;
  final TextEditingController textEditingController;
  final String? Function(String?) valide;
  final bool? secure;
  final void Function()? ontapicon;
  const CustomeTextField(
      {super.key,
      required this.icone,
      required this.labeltext,
      required this.hintText,
      required this.textInputType,
      required this.textEditingController,
      required this.valide,
      this.secure,
      this.ontapicon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: secure == false || secure == null ? false : true,
      validator: (value) => valide(value),
      keyboardType: textInputType,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide:
                BorderSide(width: 2, color: Appcolor.purple), //<-- SEE HERE
          ),
          labelText: labeltext,
          hintText: hintText,
          suffixIcon: InkWell(onTap: ontapicon, child: icone),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          )),
    );
  }
}
