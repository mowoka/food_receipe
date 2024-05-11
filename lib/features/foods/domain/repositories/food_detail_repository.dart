import 'package:food_recipe/core/domain/entities/food.dart';

abstract class FoodDetailRespository {
  Future<Food> getFoodDetail({required int foodId});
  bool checkIsFavoriteFood({required Food food});
  void addFoodFavorite({required Food food});
  void removeFavoriteFood({required Food food});
}
