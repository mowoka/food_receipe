import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:food_recipe/core/domain/entities/food.dart';

abstract class FoodRespository {
  FoodRespository();

  Future<List<Food>> getFoodSuggestion();
  Future<List<Food>> getLatestFood();
  Future<List<Drink>> getDrinks();
}
