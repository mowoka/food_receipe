import 'package:food_recipe/core/domain/entities/food.dart';
import 'package:food_recipe/features/foods/domain/repositories/food_reposotory.dart';

class GetLatestFood {
  final FoodRespository repository;

  GetLatestFood({required this.repository});

  Future<List<Food>> execute() async {
    return await repository.getLatestFood();
  }
}
