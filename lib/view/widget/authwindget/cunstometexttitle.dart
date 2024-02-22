import 'package:flutter/material.dart';

class CustomeTextTitlewidget extends StatelessWidget {
  final String text;
  final double size;
  const CustomeTextTitlewidget({super.key, required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: size));
  }
}
