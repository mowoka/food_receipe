import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:food_recipe/features/foods/domain/repositories/drink_detail_repository.dart';

class RemoveFavoriteDrink {
  final DrinkDetailRepository repository;

  RemoveFavoriteDrink({required this.repository});

  void execute({required Drink drink}) {
    return repository.removeFavoriteDrink(drink: drink);
  }
}
