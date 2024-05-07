import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:food_recipe/features/foods/domain/repositories/drink_detail_repository.dart';

class GetDrinkDetail {
  final DrinkDetailRepository respository;

  GetDrinkDetail({required this.respository});

  Future<Drink> execute({required int drinkId}) async {
    return await respository.getDrink(drinkId: drinkId);
  }
}
