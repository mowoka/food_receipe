import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:food_recipe/features/foods/data/repositories/drink_detail_repository_impl.dart';
import 'package:food_recipe/features/foods/domain/entities/drink_detail_entity.dart';
import 'package:food_recipe/features/foods/domain/usecases/get_drink_detail.dart';
import 'package:food_recipe/features/foods/domain/usecases/storage_add_favorite_drink.dart';
import 'package:food_recipe/features/foods/domain/usecases/storage_check_is_favorite_drink.dart';
import 'package:food_recipe/features/foods/domain/usecases/storage_remove_favorite_drink.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DrinkDetailController extends GetxController {
  final repo = DrinkDetailRepositoryImpl(
    storage: GetStorage(),
  );

  Rx<DrinkDetailEntity> drinkDetailEntity = DrinkDetailEntity().obs;
  Rx<bool> isLoading = false.obs;
  Rx<bool> isFavoriteDrink = false.obs;

  // init func
  late final GetDrinkDetail getDrinkDetail;
  late final CheckIsFavoriteDrink checkIsFavoriteDrink;
  late final AddFavoriteDrink addFavoriteDrink;
  late final RemoveFavoriteDrink removeFavoriteDrink;

  @override
  void onInit() {
    // regist init func with repo implement
    getDrinkDetail = GetDrinkDetail(respository: repo);
    checkIsFavoriteDrink = CheckIsFavoriteDrink(repository: repo);
    addFavoriteDrink = AddFavoriteDrink(repository: repo);
    removeFavoriteDrink = RemoveFavoriteDrink(repository: repo);

    super.onInit();
  }

  Future<void> getDrink({required int drinkId}) async {
    isLoading.value = true;

    final drink = await getDrinkDetail.execute(drinkId: drinkId);
    drinkDetailEntity.value.data = drink;
    checkIsFavDrink(drink: drink);

    isLoading.value = false;
    update();
  }

  void checkIsFavDrink({required Drink drink}) {
    isFavoriteDrink.value = checkIsFavoriteDrink.execute(drink: drink);
    update();
  }

  void addFavDrink({required Drink drink}) {
    addFavoriteDrink.execute(drink: drink);
    checkIsFavDrink(drink: drink);
    update();
  }

  void removeFavDrink({required Drink drink}) {
    removeFavoriteDrink.execute(drink: drink);
    checkIsFavDrink(drink: drink);
    update();
  }
}
