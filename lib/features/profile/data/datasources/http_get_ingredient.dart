import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:food_recipe/features/profile/data/models/ingredient_model.dart';

const String jsonFilePath = 'assets/json/ingredients.json';

Future<List<IngredientModel>> httpGetIngredient() async {
  final res = await Future.delayed(const Duration(seconds: 1), () async {
    final response = await rootBundle.loadString(jsonFilePath);
    final data = await json.decode(response);
    return data['data'];
  });

  final ingredients =
      (res as List).map((e) => IngredientModel.fromJson(e)).toList();
  return ingredients;
}
