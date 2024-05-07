import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:food_recipe/core/data/models/food_model.dart';

const String jsonFilePath = 'assets/json/foods.json';

Future<FoodModel> httpGetFoodDetail({required foodId}) async {
  final res = await Future.delayed(const Duration(seconds: 2), () async {
    final response = await rootBundle.loadString(jsonFilePath);
    final data = await json.decode(response);
    return data['data'];
  });

  final foods = (res as List).map((e) => FoodModel.fromJson(e)).toList();
  final food = foods.where((element) => element.id == foodId);
  return food.first;
}
