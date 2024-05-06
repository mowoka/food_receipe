import 'package:food_recipe/core/domain/entities/food.dart';

abstract class FoodRespository {
  FoodRespository();

  Future<List<Food>> getFoodSuggestion();
  Future<List<Food>> getLatestFood();
}
