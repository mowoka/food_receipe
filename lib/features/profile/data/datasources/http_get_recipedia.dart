import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:food_recipe/features/profile/data/models/recipedia_model.dart';

const String jsonFilePath = 'assets/json/recipedia.json';

Future<List<RecipediaModel>> httpGetRecipedia() async {
  final res = await Future.delayed(const Duration(seconds: 1), () async {
    final response = await rootBundle.loadString(jsonFilePath);
    final data = await json.decode(response);
    return data['data'];
  });

  final recipediaList =
      (res as List).map((e) => RecipediaModel.fromJson(e)).toList();
  return recipediaList;
}
