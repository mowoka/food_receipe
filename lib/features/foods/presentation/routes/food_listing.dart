import 'package:flutter/material.dart';
import 'package:food_recipe/core/presentation/widgets/food_scaffold.dart';

class FoodListing extends StatelessWidget {
  const FoodListing({super.key});

  @override
  Widget build(BuildContext context) {
    return const FoodScaffold(
      body: Center(
        child: Text('Food Listing'),
      ),
    );
  }
}
