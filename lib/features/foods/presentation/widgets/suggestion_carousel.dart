import 'package:flutter/material.dart';
import 'package:food_recipe/features/foods/presentation/controllers/food_listing_controller.dart';
import 'package:food_recipe/features/foods/presentation/widgets/section_carousel.dart';
import 'package:get/get.dart';

class SuggestionCarousel extends StatelessWidget {
  const SuggestionCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 60),
      child: GetBuilder<FoodListingController>(
        init: FoodListingController(),
        builder: (contoroller) {
          return SectionCarousel(
            title: 'Suggestions',
            onTapButtonMore: () {},
            list: contoroller.foodSuggestions,
          );
        },
      ),
    );
  }
}
