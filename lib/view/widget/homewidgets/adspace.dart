// ignore_for_file: prefer_const_constructors

import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/core/constant/imagesconstant.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AdsSpace extends StatelessWidget {
  final String username;
  const AdsSpace({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Appcolor.purple,
        child: Column(
          children: [
            SizedBox(
              height: 345,
              width: double.maxFinite,
              child: PageView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        //==========================
                        //      The offer title
                        //==========================
                        Padding(
                          padding: const EdgeInsets.only(top: 140.0),
                          child: ListTile(
                            title: Text(
                              "Greate day for shoping",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(color: Appcolor.white)
                                  .copyWith(fontSize: 20),
                            ),
                            //==========================
                            //      The offer content
                            //==========================
                            subtitle: Text(username,
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(color: Appcolor.white)
                                    .copyWith(fontSize: 40)),
                          ),
                        ),
                        //==========================
                        //       The offer image
                        //==========================
                        Positioned(
                            bottom: 10,
                            right: -50,
                            child: Lottie.asset(AppImagesConstantes.shopping,
                                width: 350)),
                      ],
                    );
                  }),
            ),
            //==========================
            //       The adspace dots bar
            //==========================
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(4, (index) {
                  return AnimatedContainer(
                    decoration: BoxDecoration(
                      color: Appcolor.warmPearlGray,
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(
                            40.0), // Horizontal radius for left corners
                        right: Radius.circular(
                            40.0), // Horizontal radius for right corners
                      ),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    duration: Duration(milliseconds: 900),
                    // ignore: unrelated_type_equality_checks
                    width: 15,
                    height: 5,
                  );
                })
              ],
            ),
          ],
        ));
  }
}
