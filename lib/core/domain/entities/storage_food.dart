import 'dart:convert';

import 'package:food_recipe/core/data/models/food_model.dart';
import 'package:food_recipe/core/domain/entities/food.dart';
import 'package:get_storage/get_storage.dart';

class StorageFood {
  final String spKey;
  final GetStorage storage;

  StorageFood({
    required this.spKey,
    required this.storage,
  });

  List<Food> get() {
    final data = storage.read(spKey);
    if (data == null) return [];
    final json = jsonDecode(data);
    final foods = (json as List).map((e) => FoodModel.fromJson(e)).toList();
    return foods.map((e) => e.toEntity()).toList();
  }

  void addFavorite(Food value) async {
    final dataStorage = storage.read(spKey);

    List<FoodModel> foods = [];

    if (dataStorage != null) {
      final json = jsonDecode(dataStorage);
      foods = (json as List).map((e) => FoodModel.fromJson(e)).toList();
    }
    final food = FoodModel(
      id: value.id,
      name: value.name,
      image: value.image,
      author: value.author,
      ingredients: value.ingredients,
      howToMake: value.howToMake,
    );

    final isFoodExist = foods.where((element) => element.id == food.id);

    if (isFoodExist.isNotEmpty) {
      return;
    }

    foods.add(food);
    final data = foods.map((e) => e.toJson()).toList();
    final json = jsonEncode(data);
    await storage.write(spKey, json);
  }

  void removeFavorite(Food value) async {
    final dataStorage = storage.read(spKey);

    List<FoodModel> foods = [];

    if (dataStorage != null) {
      final json = jsonDecode(dataStorage);
      foods = (json as List).map((e) => FoodModel.fromJson(e)).toList();
    }
    final food = FoodModel(
      id: value.id,
      name: value.name,
      image: value.image,
      author: value.author,
      ingredients: value.ingredients,
      howToMake: value.howToMake,
    );

    final isFoodExist = foods.where((element) => element.id == food.id);

    if (isFoodExist.isEmpty) {
      return;
    }

    foods.removeWhere((element) => element.id == food.id);
    final data = foods.map((e) => e.toJson()).toList();
    final json = jsonEncode(data);
    await storage.write(spKey, json);
  }

  void clear() {
    storage.remove(spKey);
  }
}
