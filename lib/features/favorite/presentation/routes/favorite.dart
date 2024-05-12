import 'package:flutter/material.dart';
import 'package:food_recipe/core/presentation/widgets/app_bar_header.dart';
import 'package:food_recipe/core/presentation/widgets/food_scaffold.dart';
import 'package:food_recipe/features/favorite/presentation/controllers/favorite_controller.dart';
import 'package:food_recipe/features/favorite/presentation/widgets/favorite_item.dart';
import 'package:get/get.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return const FoodScaffold(
      body: FavoriteContent(),
    );
  }
}

class FavoriteContent extends StatelessWidget {
  const FavoriteContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppBarHeader(
          title: 'My Favorite',
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: GetBuilder(
              init: FavoriteController(),
              builder: (controller) {
                final foods = controller.favoriteEntity.value.foods;
                final drinks = controller.favoriteEntity.value.drinks;

                return Column(
                  children: [
                    for (final food in foods)
                      FavoriteItem(
                        name: food.name,
                        author: food.author,
                      )
                  ],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
