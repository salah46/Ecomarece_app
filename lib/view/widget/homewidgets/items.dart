import 'package:ecomarce_app_project/controller/homepagecontroller.dart';
import 'package:ecomarce_app_project/core/constant/color.dart';
import 'package:ecomarce_app_project/core/constant/imagesconstant.dart';
import 'package:ecomarce_app_project/data/model/items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Items extends StatelessWidget {
  final String title;

  const Items({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headlineSmall!,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GetBuilder<HomeController>(
            builder: (controller) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                width: double.infinity,
                height: 200,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 10),
                    itemCount: controller.items.length,
                    itemBuilder: (context, index) => ItemsList(
                          onTap: () => print(controller.items[index]),
                          itemModel:
                              ItemsModel.fromJson(controller.items[index]),
                        )),
              );
            },
          ),
        ),
      ],
    );
  }
}

class ItemsList extends StatelessWidget {
  final ItemsModel itemModel;
  final void Function()? onTap;
  const ItemsList({super.key, required this.itemModel, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        height: 200,
        width: 180,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                AppImagesConstantes.checkidmail,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black.withOpacity(0.3),
              ),
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "${itemModel.itemsName}",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Appcolor.warmPearlGray,
                        fontSize: 20,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
