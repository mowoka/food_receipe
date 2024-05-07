import 'package:food_recipe/core/domain/entities/food.dart';

abstract class FoodDetailRespository {
  Future<Food> getFoodDetail({required int foodId});
}
