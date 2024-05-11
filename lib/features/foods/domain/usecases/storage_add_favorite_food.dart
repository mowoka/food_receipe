import 'package:food_recipe/core/domain/entities/food.dart';
import 'package:food_recipe/features/foods/domain/repositories/food_detail_repository.dart';

class AddFavoriteFood {
  final FoodDetailRespository respository;

  AddFavoriteFood({required this.respository});

  void execute({required Food food}) {
    return respository.addFoodFavorite(food: food);
  }
}
