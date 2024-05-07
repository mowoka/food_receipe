import 'package:food_recipe/core/domain/entities/food.dart';
import 'package:food_recipe/features/foods/data/datasources/http_get_food_detail.dart';
import 'package:food_recipe/features/foods/domain/repositories/food_detail_repository.dart';

class FoodDetailRespositoryImpl implements FoodDetailRespository {
  @override
  Future<Food> getFoodDetail({required int foodId}) async {
    final res = await httpGetFoodDetail(foodId: foodId);
    return res.toEntity();
  }
}
