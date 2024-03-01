import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/core/constant/imagesconstant.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Headerwidget extends StatelessWidget {
  final String username;

  const Headerwidget({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Appcolor.purple,
      child: Padding(
        padding: const EdgeInsets.only(top: 90),
        child: Column(
          children: [
            Stack(
              children: [
                ListTile(
                  title: Text(
                    "Greate day for shoping",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: Appcolor.white)
                        .copyWith(fontSize: 14),
                  ),
                  subtitle: Text(username,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(color: Appcolor.white)
                          .copyWith(fontSize: 25)),
                ),
                Positioned(child: Lottie.asset(AppImagesConstantes.shopping))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
