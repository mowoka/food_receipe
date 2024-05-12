import 'package:food_recipe/core/config/storage_keys.dart';
import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:food_recipe/core/domain/entities/food.dart';
import 'package:food_recipe/core/domain/entities/storage_drink.dart';
import 'package:food_recipe/core/domain/entities/storage_food.dart';
import 'package:food_recipe/features/favorite/domain/repositories/favorite_repository.dart';
import 'package:get_storage/get_storage.dart';

class FavoriteRepositoryImpl implements FavoriteRepository {
  late final StorageFood storageFood;
  late final StorageDrink storageDrink;

  FavoriteRepositoryImpl({required GetStorage storage}) {
    storageFood = StorageFood(
      spKey: StorageKeys.storageFood,
      storage: storage,
    );
    storageDrink = StorageDrink(
      spKey: StorageKeys.storageDrink,
      storage: storage,
    );
  }

  @override
  List<Food> getFoods() {
    return storageFood.get();
  }

  @override
  List<Drink> getDrinks() {
    return storageDrink.get();
  }
}
