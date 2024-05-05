import 'package:flutter/material.dart';
import 'package:food_recipe/features/foods/presentation/controllers/food_home_controller.dart';
import 'package:food_recipe/features/foods/presentation/widgets/section_carousel.dart';
import 'package:get/get.dart';

class LatesCarousel extends StatelessWidget {
  const LatesCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FoodHomeController>(
      init: FoodHomeController(),
      builder: (contoroller) {
        return SectionCarousel(
          title: 'Latest',
          onTapButtonMore: () {},
          foodList: contoroller.latestFood,
        );
      },
    );
  }
}