import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  final Icon icon;
  final void Function()? onPressed;
  const ButtonIcon({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 245, 243, 243),
          borderRadius: BorderRadius.circular(50)),
      child: IconButton(
        onPressed: () => onPressed,
        icon: icon,
        color: Color.fromARGB(255, 114, 114, 112),
      ),
    );
  }
}
