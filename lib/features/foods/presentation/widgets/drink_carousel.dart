import 'package:flutter/material.dart';
import 'package:food_recipe/core/config/route_name.dart';
import 'package:food_recipe/features/foods/presentation/controllers/food_home_controller.dart';
import 'package:food_recipe/features/foods/presentation/widgets/section_carousel.dart';
import 'package:get/get.dart';

class DrinkCarousel extends StatelessWidget {
  const DrinkCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FoodHomeController>(
      init: FoodHomeController(),
      builder: (contoroller) {
        return SectionCarousel(
          globalKey: const Key('btn_more_drinks'),
          isLoading: contoroller.isLoading.value,
          title: 'Drink',
          onTapButtonMore: () {
            Get.toNamed(RouteName.foodListing);
          },
          drinkList: contoroller.drinks,
          isFood: false,
        );
      },
    );
  }
}
