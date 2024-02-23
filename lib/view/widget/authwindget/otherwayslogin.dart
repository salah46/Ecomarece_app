import 'package:ecomarce_app_project/core/constant/imagesconstant.dart';
import 'package:flutter/material.dart';

class OtherWaySignIn extends StatelessWidget {
  
  const OtherWaySignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 18),
          child: InkWell(
            onTap: () {},
            child: Image.asset(
              AppImagesConstantes.google,
              width: 25,
              height: 25,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 18),
          child: InkWell(
            onTap: () {},
            child: Image.asset(
              AppImagesConstantes.x,
              width: 25,
              height: 25,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 18),
          child: InkWell(
            onTap: () {},
            child: Image.asset(
              AppImagesConstantes.facebook,
              width: 25,
              height: 25,
            ),
          ),
        )
      ],
    );
  }
}
