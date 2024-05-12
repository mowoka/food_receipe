import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:food_recipe/core/domain/entities/storage_drink.dart';
import 'package:food_recipe/features/foods/data/datasources/http_get_drink_detail.dart';
import 'package:food_recipe/features/foods/domain/repositories/drink_detail_repository.dart';
import 'package:get_storage/get_storage.dart';

class DrinkDetailRepositoryImpl implements DrinkDetailRepository {
  late final StorageDrink storageDrink;

  DrinkDetailRepositoryImpl({required GetStorage storage}) {
    storageDrink = StorageDrink(spKey: 'storageFood', storage: storage);
  }

  @override
  Future<Drink> getDrink({required int drinkId}) async {
    final res = await httpGetDrinkDetail(drinkId: drinkId);
    return res.toEntity();
  }

  @override
  bool checkIsFavoriteDrink({required Drink drink}) {
    final drinks = storageDrink.get();
    final findDrink = drinks.where((element) => element.id == drink.id);
    return findDrink.isNotEmpty;
  }

  @override
  void addFavoriteDrink({required Drink drink}) {
    storageDrink.addFavorite(drink);
  }

  @override
  void removeFavoriteDrink({required Drink drink}) {
    storageDrink.removeFavorite(drink);
  }
}
