import 'package:flutter/material.dart';
import 'package:food_recipe/features/foods/presentation/controllers/food_listing_controller.dart';
import 'package:food_recipe/features/foods/presentation/widgets/section_carousel.dart';
import 'package:get/get.dart';

class LatesCarousel extends StatelessWidget {
  const LatesCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FoodListingController>(
      init: FoodListingController(),
      builder: (contoroller) {
        return SectionCarousel(
          title: 'Latest',
          onTapButtonMore: () {},
          list: contoroller.latestFood,
        );
      },
    );
  }
}
