import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food_recipe/core/config/route_name.dart';
import 'package:food_recipe/core/config/testing_config.dart';
import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:food_recipe/core/domain/entities/food.dart';
import 'package:food_recipe/core/presentation/widgets/food_inkwell.dart';
import 'package:get/get.dart';

class FoodListingFoodCard extends StatelessWidget {
  const FoodListingFoodCard({
    super.key,
    required this.foods,
    required this.drinks,
  });

  final List<Food> foods;
  final List<Drink> drinks;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (final food in foods) FoodCard(food: food),
              for (final drink in drinks) DrinkCard(drink: drink),
            ],
          ),
        ),
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  const FoodCard({
    super.key,
    required this.food,
  });

  final Food food;

  @override
  Widget build(BuildContext context) {
    final testConfig = TestingConfig();
    return FoodInkWell(
      onTap: () {
        final data = {"id": food.id};
        Get.toNamed(RouteName.foodDetail, arguments: jsonEncode(data));
      },
      child: Container(
        height: 70,
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Colors.orange.shade600,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (food.image.isEmpty)
              const ImagePlaceholder()
            else
              SizedBox(
                height: double.infinity,
                width: 120,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                  child: testConfig.getTesting()
                      ? Image.asset(
                          'assets/images/placeholder-silde.png',
                          fit: BoxFit.cover,
                        )
                      : Image.network(
                          food.image,
                          fit: BoxFit.cover,
                        ),
                ),
              ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      food.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      food.author,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrinkCard extends StatelessWidget {
  const DrinkCard({
    super.key,
    required this.drink,
  });

  final Drink drink;

  @override
  Widget build(BuildContext context) {
    final testConfig = TestingConfig();
    return FoodInkWell(
      onTap: () {
        final data = {"id": drink.id};
        Get.toNamed(RouteName.drinkDetail, arguments: jsonEncode(data));
      },
      child: Container(
        height: 70,
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Colors.orange.shade600,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: double.infinity,
              width: 120,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
                child: testConfig.getTesting()
                    ? Image.asset(
                        'assets/images/placeholder-silde.png',
                        fit: BoxFit.cover,
                      )
                    : Image.network(
                        drink.image,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      drink.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      drink.author,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImagePlaceholder extends StatelessWidget {
  const ImagePlaceholder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: 120,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          bottomLeft: Radius.circular(8),
        ),
        child: Container(
          color: Colors.grey.shade300,
        ),
      ),
    );
  }
}
