import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:flutter/material.dart';

class SearchProductBar extends StatelessWidget {
  final String text;
  final void Function()? onTapSearch;
  const SearchProductBar({super.key, this.onTapSearch, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: const EdgeInsets.only(right: 10.0, left: 8),
            child: SizedBox(
                width: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Appcolor.warmPearlGray,
                      prefixIcon: IconButton(
                        onPressed: onTapSearch,
                        icon: const Icon(Icons.search_outlined),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.elliptical(20, 20),
                              right: Radius.elliptical(20, 20))),
                      hintText: text,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10)),
                ))));
  }
}
