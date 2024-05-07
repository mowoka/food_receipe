import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food_recipe/core/presentation/widgets/food_scaffold.dart';
import 'package:food_recipe/features/foods/presentation/controllers/food_detail_controller.dart';
import 'package:food_recipe/features/foods/presentation/widgets/food_detail_left_panel.dart';
import 'package:food_recipe/features/foods/presentation/widgets/food_detail_right_panel.dart';
import 'package:get/get.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final fdc = Get.put(FoodDetailController());
    final arg = Get.arguments;
    final data = jsonDecode(arg);
    final id = data["id"];
    fdc.getFoodDetailData(foodId: id);

    return FoodScaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: GetBuilder(
            init: FoodDetailController(),
            builder: (controller) {
              final food = controller.foodDetailEntity.value.data;
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FoodDetailLeftPanel(),
                        FoodDetailRightPanel(
                          // imageURL: controller.foodDetailEntity.value.data.image,
                          imageURL:
                              "https://img.lazcdn.com/g/p/8f019f3b170a4f1acb442446c0f5a4f8.jpg_720x720q80.jpg",
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 30),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          food.name,
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          food.author,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.orangeAccent,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
