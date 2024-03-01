import 'package:flutter/material.dart';
class HeaderBottomWidget extends StatelessWidget {
  const HeaderBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.settings,
          color: Colors.white,
        ),
      ],
    );
  }
}