import 'package:flutter/material.dart';
import 'package:food_recipe/features/favorite/presentation/routes/favorite.dart';
import 'package:food_recipe/features/foods/presentation/routes/food_home.dart';

abstract class BottomNavigationWidget {
  static const List<Widget> widgetOptions = [
    FoodHomeContent(),
    FavoriteContent(),
    FoodHomeContent(),
  ];
}
