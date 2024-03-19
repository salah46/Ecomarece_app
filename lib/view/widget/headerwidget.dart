import 'package:ecomarce_app_project/view/widget/buttons.dart';
import 'package:ecomarce_app_project/view/widget/searchprouducttextfield.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget{
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SearchProductBar(
                      text: 'Find prouduct',
                      onTapSearch: () {},
                    ),
                    ButtonIcon(
                      icon: const Icon(Icons.notifications_none_rounded),
                      onPressed: () {},
                    )
                  ],
                ),
              );
  }
    
  }