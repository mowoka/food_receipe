import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:food_recipe/core/domain/entities/food.dart';

abstract class FavoriteRepository {
  List<Food> getFoods();
  List<Drink> getDrinks();
}
