import 'package:food_recipe/core/domain/entities/food.dart';
import 'package:food_recipe/features/favorite/domain/repositories/favorite_repository.dart';

class StorageGetFoods {
  final FavoriteRepository repository;

  StorageGetFoods({required this.repository});

  List<Food> execute() {
    return repository.getFoods();
  }
}
