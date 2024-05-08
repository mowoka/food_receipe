import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:food_recipe/core/domain/entities/food.dart';
import 'package:food_recipe/features/foods/data/datasources/http_get_drink.dart';
import 'package:food_recipe/features/foods/data/datasources/http_get_food.dart';
import 'package:food_recipe/features/foods/domain/repositories/food_listing_reporsitory.dart';

class FoodListingRepositoryImpl implements FoodListingRepository {
  @override
  Future<List<Food>> getFoods() async {
    final res = await httpGetFood();
    return res.map((e) => e.toEntity()).toList();
  }

  @override
  Future<List<Drink>> getDrinks() async {
    final res = await httpGetDrink();
    return res.map((e) => e.toEntity()).toList();
  }
}
