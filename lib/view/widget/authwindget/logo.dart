import 'package:ecomarce_app_project/core/constant/imagesconstant.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: Image.asset(
        AppImagesConstantes.logo,
        fit: BoxFit.fill,
      ),
    );
  }
}
