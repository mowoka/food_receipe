import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:food_recipe/features/foods/domain/repositories/drink_detail_repository.dart';

class CheckIsFavoriteDrink {
  final DrinkDetailRepository repository;

  CheckIsFavoriteDrink({required this.repository});

  bool execute({required Drink drink}) {
    return repository.checkIsFavoriteDrink(drink: drink);
  }
}
