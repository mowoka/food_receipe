import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:food_recipe/features/favorite/domain/repositories/favorite_repository.dart';

class StorageGetDrinks {
  final FavoriteRepository repository;

  StorageGetDrinks({required this.repository});

  List<Drink> execute() {
    return repository.getDrinks();
  }
}
