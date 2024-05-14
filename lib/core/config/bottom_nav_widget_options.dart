import 'package:flutter/material.dart';
import 'package:food_recipe/features/favorite/presentation/routes/favorite.dart';
import 'package:food_recipe/features/foods/presentation/routes/food_home.dart';
import 'package:food_recipe/features/profile/presentation/routes/profile.dart';

abstract class BottomNavigationWidget {
  static const List<Widget> widgetOptions = [
    FoodHomeContent(),
    FavoriteContent(),
    ProfileContent(),
  ];
}
