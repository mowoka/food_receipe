import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:food_recipe/core/data/models/drink_model.dart';

const String jsonFilePath = 'assets/json/drinks.json';

Future<DrinkModel> httpGetDrinkDetail({required int drinkId}) async {
  final res = await Future.delayed(const Duration(seconds: 1), () async {
    final response = await rootBundle.loadString(jsonFilePath);
    final data = await json.decode(response);
    return data['data'];
  });

  final drinks = (res as List).map((e) => DrinkModel.fromJson(e)).toList();
  final drink = drinks.where((element) => element.id == drinkId);
  return drink.first;
}
