import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomeBottom extends StatelessWidget {
  final String text1;
  final String text2;
  final void Function()? ontap;

  const CustomeBottom(
      {super.key, required this.text1, required this.text2, this.ontap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text1, style: Theme.of(context).textTheme.bodySmall!),
        InkWell(
          onTap: ontap,
          child: Text(
            text2,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(decoration: TextDecoration.underline)
                .copyWith(color: Appcolor.purple),
          ),
        )
      ],
    );
  }
}
