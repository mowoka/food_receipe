import 'package:flutter/material.dart';
import 'package:food_recipe/features/foods/presentation/controllers/food_listing_controller.dart';
import 'package:food_recipe/features/foods/presentation/widgets/food_listing_filter.dart';
import 'package:food_recipe/features/foods/presentation/widgets/food_listing_food_card.dart';
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';

class FoodListing extends StatelessWidget {
  const FoodListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GetBuilder(
            init: FoodListingController(),
            builder: (controller) {
              final isLoading = controller.isLoading.value;
              final foodsFiltered = controller.filteredFoods;
              final drinkFiltered = controller.filteredDrinks;

              return Skeletonizer(
                enabled: isLoading,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const FoodListingFilter(),
                    FoodListingFoodCard(
                      foods: foodsFiltered,
                      drinks: drinkFiltered,
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
