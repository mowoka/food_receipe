import 'package:food_recipe/core/domain/entities/food.dart';
import 'package:food_recipe/features/foods/domain/repositories/food_detail_repository.dart';

class RemoveFavoriteFood {
  final FoodDetailRespository respository;

  RemoveFavoriteFood({required this.respository});

  void execute({required Food food}) {
    return respository.removeFavoriteFood(food: food);
  }
}
