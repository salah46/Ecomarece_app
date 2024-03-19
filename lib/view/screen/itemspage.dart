import 'package:ecomarce_app_project/view/widget/headerwidget.dart';
import 'package:ecomarce_app_project/view/widget/items/listcategoriesitems.dart';
import 'package:ecomarce_app_project/view/widget/searchprouducttextfield.dart';
import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:  [
          HeaderWidget(),
          ListCategoriesItems(
            title: '',
          )
        ],
      ),
    );
  }
}
