import 'package:flutter/material.dart';
import 'package:food_recipe/core/presentation/widgets/food_scaffold.dart';

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
    return const Center(
      child: Text('favorite'),
    );
  }
}
