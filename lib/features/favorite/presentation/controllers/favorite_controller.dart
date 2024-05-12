import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:food_recipe/core/domain/entities/food.dart';
import 'package:food_recipe/features/favorite/data/repositories/favorite_repository_impl.dart';
import 'package:food_recipe/features/favorite/domain/entities/favorite_entity.dart';
import 'package:food_recipe/features/favorite/domain/usecases/storage_get_drinks.dart';
import 'package:food_recipe/features/favorite/domain/usecases/storage_get_foods.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class FavoriteController extends GetxController {
  final repo = FavoriteRepositoryImpl(
    storage: GetStorage(),
  );

  Rx<FavoriteEntity> favoriteEntity = FavoriteEntity().obs;

  // init func
  late final StorageGetFoods storageGetFoods;
  late final StorageGetDrinks storageGetDrinks;

  @override
  void onInit() {
    // regist init func with repo implement
    storageGetFoods = StorageGetFoods(repository: repo);
    storageGetDrinks = StorageGetDrinks(repository: repo);

    onLoad();
    super.onInit();
  }

  void onLoad() {
    favoriteEntity.value.foods = getFoodList();
    favoriteEntity.value.drinks = getDrinkList();
    update();
  }

  List<Food> getFoodList() {
    return storageGetFoods.execute();
  }

  List<Drink> getDrinkList() {
    return storageGetDrinks.execute();
  }
}
