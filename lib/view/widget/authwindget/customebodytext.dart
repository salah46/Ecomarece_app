import 'package:flutter/material.dart';

class CustomeBodyText extends StatelessWidget {
  final String body;
  const CustomeBodyText({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Text(
      body,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
