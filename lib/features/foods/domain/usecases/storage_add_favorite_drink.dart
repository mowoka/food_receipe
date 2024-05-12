import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:food_recipe/features/foods/domain/repositories/drink_detail_repository.dart';

class AddFavoriteDrink {
  final DrinkDetailRepository repository;

  AddFavoriteDrink({required this.repository});

  void execute({required Drink drink}) {
    return repository.addFavoriteDrink(drink: drink);
  }
}
