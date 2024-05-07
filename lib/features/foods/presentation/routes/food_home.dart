import 'package:flutter/material.dart';
import 'package:food_recipe/core/presentation/widgets/food_scaffold.dart';
import 'package:food_recipe/features/foods/presentation/widgets/drink_carousel.dart';
import 'package:food_recipe/features/foods/presentation/widgets/latest_carousel.dart';
import 'package:food_recipe/features/foods/presentation/widgets/search_content.dart';
import 'package:food_recipe/features/foods/presentation/widgets/suggestion_carousel.dart';

class FoodHome extends StatelessWidget {
  const FoodHome({super.key});

  @override
  Widget build(BuildContext context) {
    return FoodScaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Colors.white38,
        ),
        child: const SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchContent(),
              SuggestionCarousel(),
              LatesCarousel(),
              DrinkCarousel()
            ],
          ),
        ),
      ),
    );
  }
}
