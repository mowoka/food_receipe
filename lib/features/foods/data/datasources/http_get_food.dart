import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:food_recipe/core/data/models/food_model.dart';

const String jsonFilePath = 'assets/json/foods.json';

Future<List<FoodModel>> httpGetFood() async {
  final res = await Future.delayed(const Duration(seconds: 1), () async {
    final response = await rootBundle.loadString(jsonFilePath);
    final data = await json.decode(response);
    return data['data'];
  });

  final foods = (res as List).map((e) => FoodModel.fromJson(e)).toList();

  return foods;
}
