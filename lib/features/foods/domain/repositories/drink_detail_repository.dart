import 'package:food_recipe/core/domain/entities/drink.dart';

abstract class DrinkDetailRepository {
  Future<Drink> getDrink({required int drinkId});
}
