import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:food_recipe/core/domain/entities/food.dart';

abstract class FoodListingRepository {
  Future<List<Food>> getFoods();
  Future<List<Drink>> getDrinks();
}
