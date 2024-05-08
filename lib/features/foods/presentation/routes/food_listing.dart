import 'package:flutter/material.dart';
import 'package:food_recipe/core/presentation/widgets/food_scaffold.dart';
import 'package:food_recipe/features/foods/presentation/controllers/food_listing_controller.dart';
import 'package:food_recipe/features/foods/presentation/widgets/food_listing_filter.dart';
import 'package:food_recipe/features/foods/presentation/widgets/food_listing_food_card.dart';
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';

class FoodListing extends StatelessWidget {
  const FoodListing({super.key});

  @override
  Widget build(BuildContext context) {
    return FoodScaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GetBuilder(
            init: FoodListingController(),
            builder: (controller) {
              final foods = controller.foodListingEntity.value.foods;
              final drinks = controller.foodListingEntity.value.drinks;
              final isLoading = controller.isLoading.value;

              return Skeletonizer(
                enabled: isLoading,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const FoodListingFilter(),
                    FoodListingFoodCard(
                      foods: foods,
                      drinks: drinks,
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
