import 'package:food_recipe/core/domain/entities/drink.dart';

abstract class DrinkDetailRepository {
  Future<Drink> getDrink({required int drinkId});
  bool checkIsFavoriteDrink({required Drink drink});
  void addFavoriteDrink({required Drink drink});
  void removeFavoriteDrink({required Drink drink});
}
