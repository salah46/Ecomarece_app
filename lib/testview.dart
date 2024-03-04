// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:draggable_home/draggable_home.dart';
// import 'package:ecomarce_app_project/controller/homepagecontroller.dart';
// import 'package:ecomarce_app_project/core/class/handlingdataview.dart';
// import 'package:ecomarce_app_project/core/constant/color.dart';
// import 'package:ecomarce_app_project/core/constant/imagesconstant.dart';
// import 'package:ecomarce_app_project/view/widget/homewidgets/body.dart';
// import 'package:ecomarce_app_project/view/widget/homewidgets/buttons.dart';
// import 'package:ecomarce_app_project/view/widget/homewidgets/headerbottomwidget.dart';
// import 'package:ecomarce_app_project/view/widget/homewidgets/adspace.dart';
// import 'package:ecomarce_app_project/view/widget/homewidgets/searchprouducttextfield.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:lottie/lottie.dart';

// class HomePage extends StatelessWidget {
//   HomePage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     Get.put(HomeController());
//     return GetBuilder<HomeController>(builder: (controller) {
//       return HandlingDataView(controller.statusResquest,
//           widget: CustomScrollView(
//             shrinkWrap: false,
//             slivers: [
//               SliverAppBar(
//                 leading: Drawer(
//                   width: 300,
//                   child: ListView(children: [
//                     UserAccountsDrawerHeader(
//                       accountName: Text('Your Name'),
//                       accountEmail: Text('your@email.com'),
//                       currentAccountPicture: CircleAvatar(
//                         backgroundColor: Colors.white,
//                         child: Icon(
//                           Icons.person,
//                           color: Colors.blue,
//                         ),
//                       ),
//                     )
//                   ]),
//                 ),
//                 pinned: true,
//                 title: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Expanded(
//                           child: Padding(
//                         padding: EdgeInsets.only(right: 10.0, left: 8),
//                         child: SizedBox(
//                           width: 50,
//                           child: SearchProductBar(),
//                         ),
//                       )),
//                       ButtonIcon(
//                         icon: const Icon(Icons.shopping_cart_outlined),
//                         onPressed: () {},
//                       ),
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       ButtonIcon(
//                         icon: const Icon(Icons.notifications_none_rounded),
//                         onPressed: () {},
//                       )
//                     ],
//                   ),
//                 ),
//                 expandedHeight: 300,
//                 flexibleSpace: FlexibleSpaceBar(
//                   background: AdsSpace(username: "mohammed"),
//                 ),
//               ),
//               SliverList(
//                   delegate: SliverChildListDelegate(<Widget>[
//                 Body(),
//               ]))
//             ],
//           ));
//     });
//   }
// }
