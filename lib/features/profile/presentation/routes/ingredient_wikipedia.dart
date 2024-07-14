import 'package:flutter/material.dart';
import 'package:food_recipe/core/config/testing_config.dart';
import 'package:food_recipe/core/presentation/widgets/app_bar_header.dart';
import 'package:food_recipe/features/profile/domain/entities/ingredient_wikipedia_entities.dart';
import 'package:food_recipe/features/profile/presentation/controllers/ingredient_wikipedia_controller.dart';
import 'package:food_recipe/features/profile/presentation/widgets/list_item.dart';
import 'package:get/get.dart';

class IngredientWikipedia extends StatelessWidget {
  const IngredientWikipedia({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: IngredientWikipediaContent(),
    );
  }
}

class IngredientWikipediaContent extends StatelessWidget {
  const IngredientWikipediaContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppBarHeader(title: "Ingredients Wiki"),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: SingleChildScrollView(
              child: GetBuilder(
                init: IngredientWikipediaController(),
                builder: (controller) {
                  final ingredients =
                      controller.ingredientWikipediaEntity.value.data;
                  final isLoading = controller.isLoading.value;

                  if (isLoading) {
                    return const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: CircularProgressIndicator(
                          color: Colors.orangeAccent,
                        ),
                      ),
                    );
                  }

                  return Column(
                    children: [
                      for (final ingredient in ingredients)
                        ListItem(
                          name: ingredient.name,
                          description: ingredient.description,
                          expandedChild:
                              IngredientListItem(ingredient: ingredient),
                        )
                    ],
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}

class IngredientListItem extends StatelessWidget {
  const IngredientListItem({
    super.key,
    required this.ingredient,
  });

  final Ingredient ingredient;

  @override
  Widget build(BuildContext context) {
    final testConfig = TestingConfig();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 150,
            height: 100,
            child: testConfig.getTesting()
                ? Image.asset(
                    'assets/images/placeholder-silde.png',
                    fit: BoxFit.cover,
                  )
                : Image.network(ingredient.image),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        for (final tag in ingredient.buyAt)
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 2,
                            ),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color: Colors.orangeAccent,
                            ),
                            child: Text(
                              tag,
                              style: const TextStyle(color: Colors.white),
                            ),
                          )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(ingredient.description)
              ],
            ),
          )
        ],
      ),
    );
  }
}
