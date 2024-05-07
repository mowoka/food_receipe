import 'package:food_recipe/core/domain/entities/food.dart';
import 'package:food_recipe/features/foods/data/datasources/http_get_latest_food.dart';
import 'package:food_recipe/features/foods/data/datasources/http_get_suggestion_food.dart';
import 'package:food_recipe/features/foods/domain/repositories/food_reposotory.dart';

class FoodHomeRepositoryImpl implements FoodRespository {
  @override
  Future<List<Food>> getFoodSuggestion() async {
    final res = await httpGetSuggestionFood();
    return res.map((e) => e.toEntity()).toList();
  }

  @override
  Future<List<Food>> getLatestFood() async {
    final res = await httpGetLatestFood();
    return res.map((e) => e.toEntity()).toList();
  }
}
