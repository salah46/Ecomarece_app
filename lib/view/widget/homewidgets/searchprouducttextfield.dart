import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:flutter/material.dart';

class SearchProductBar extends StatelessWidget {
  const SearchProductBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Appcolor.warmPearlGray,
          prefixIcon: const Icon(Icons.search_outlined),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.horizontal(
                  left: Radius.elliptical(20, 20),
                  right: Radius.elliptical(20, 20))),
          hintText: "Search prouduct",
          contentPadding: const EdgeInsets.symmetric(horizontal: 10)),
    );
  }
}
