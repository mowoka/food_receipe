import 'package:food_recipe/core/domain/entities/food.dart';
import 'package:food_recipe/features/foods/domain/repositories/food_detail_repository.dart';

class CheckIsFavoriteFood {
  final FoodDetailRespository respository;

  CheckIsFavoriteFood({required this.respository});

  bool execute({required Food food}) {
    return respository.checkIsFavoriteFood(food: food);
  }
}
