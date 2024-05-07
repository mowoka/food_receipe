import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:food_recipe/features/foods/domain/repositories/food_reposotory.dart';

class GetDrink {
  final FoodRespository respository;

  GetDrink({required this.respository});

  Future<List<Drink>> execute() async {
    return await respository.getDrinks();
  }
}
