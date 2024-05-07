import 'package:food_recipe/core/domain/entities/food.dart';
import 'package:food_recipe/features/foods/domain/repositories/food_detail_repository.dart';

class GetFoodDetail {
  final FoodDetailRespository respository;

  GetFoodDetail({required this.respository});

  Future<Food> execute({required int foodId}) async {
    return await respository.getFoodDetail(foodId: foodId);
  }
}
