import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food_recipe/core/presentation/widgets/food_scaffold.dart';
import 'package:food_recipe/features/foods/presentation/controllers/drink_detail_controller.dart';
import 'package:food_recipe/features/foods/presentation/widgets/food_detail_left_panel.dart';
import 'package:food_recipe/features/foods/presentation/widgets/food_detail_right_panel.dart';
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';

class DrinkDetail extends StatelessWidget {
  const DrinkDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final ddc = Get.put(DrinkDetailController());
    final arg = Get.arguments;
    final data = jsonDecode(arg);
    final id = data["id"];
    ddc.getDrink(drinkId: id);

    return FoodScaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: GetBuilder(
            init: DrinkDetailController(),
            builder: (controller) {
              final drink = controller.drinkDetailEntity.value.data;
              final isLoading = controller.isLoading.value;
              return Skeletonizer(
                enabled: isLoading,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.7,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GetBuilder(
                            init: DrinkDetailController(),
                            builder: (ddc) {
                              final isDrinkFavorite = ddc.isFavoriteDrink.value;
                              return FoodDetailLeftPanel(
                                isFavorite: isDrinkFavorite,
                                onTapBook: () => {},
                                onTapEdiDocument: () => {},
                                onTapFavorite: () {
                                  final drink =
                                      ddc.drinkDetailEntity.value.data;
                                  if (isDrinkFavorite) {
                                    ddc.removeFavDrink(drink: drink);
                                  } else {
                                    ddc.addFavDrink(drink: drink);
                                  }
                                },
                              );
                            },
                          ),
                          FoodDetailRightPanel(
                            imageURL: drink.image,
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
                            drink.name,
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            drink.author,
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
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
