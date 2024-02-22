import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:flutter/material.dart';

class ContinueBottonWidget extends StatelessWidget {
  final String text;
  final void Function()? onpressed;
  const ContinueBottonWidget({super.key, required this.text, this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Appcolor.purple,
          borderRadius: const BorderRadius.horizontal(
            left: Radius.circular(40.0), // Horizontal radius for left corners
            right: Radius.circular(40.0), // Horizontal radius for right corners
          ),
        ),
        child: MaterialButton(
          onPressed: onpressed,
          child: Text(
            text,
            style: TextStyle(color: Appcolor.white),
          ),
        ));
  }
}
