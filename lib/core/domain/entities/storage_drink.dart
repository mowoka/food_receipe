import 'dart:convert';

import 'package:food_recipe/core/data/models/drink_model.dart';
import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:get_storage/get_storage.dart';

class StorageDrink {
  final String spKey;
  final GetStorage storage;

  StorageDrink({
    required this.spKey,
    required this.storage,
  });

  List<Drink> get() {
    final data = storage.read(spKey);
    if (data == null) return [];
    final json = jsonDecode(data);
    final drinks = (json as List).map((e) => DrinkModel.fromJson(e)).toList();
    return drinks.map((e) => e.toEntity()).toList();
  }

  void addFavorite(Drink value) async {
    final dataStorage = storage.read(spKey);
    List<DrinkModel> drinks = [];

    if (dataStorage != null) {
      final json = jsonDecode(dataStorage);
      drinks = (json as List).map((e) => DrinkModel.fromJson(e)).toList();
    }

    final drink = DrinkModel(
      id: value.id,
      name: value.name,
      image: value.image,
      author: value.author,
      ingredients: value.ingredients,
      howToMake: value.howToMake,
    );

    final isDrinkExist = drinks.where((element) => element.id == drink.id);

    if (isDrinkExist.isNotEmpty) {
      return;
    }

    drinks.add(drink);
    final data = drinks.map((e) => e.toJson()).toList();
    final json = jsonEncode(data);
    await storage.write(spKey, json);
  }

  void removeFavorite(Drink value) async {
    final dataStorage = storage.read(spKey);
    List<DrinkModel> drinks = [];

    if (dataStorage != null) {
      final json = jsonDecode(dataStorage);
      drinks = (json as List).map((e) => DrinkModel.fromJson(e)).toList();
    }

    final drink = DrinkModel(
      id: value.id,
      name: value.name,
      image: value.image,
      author: value.author,
      ingredients: value.ingredients,
      howToMake: value.howToMake,
    );

    final isDrinkExist = drinks.where((element) => element.id == drink.id);

    if (isDrinkExist.isEmpty) {
      return;
    }

    drinks.removeWhere((element) => element.id == drink.id);
    final data = drinks.map((e) => e.toJson()).toList();
    final json = jsonEncode(data);
    await storage.write(spKey, json);
  }

  void clear() {
    storage.remove(spKey);
  }
}
