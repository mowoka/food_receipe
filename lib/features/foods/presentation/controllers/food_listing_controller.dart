import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:food_recipe/core/domain/entities/food.dart';
import 'package:food_recipe/features/foods/data/repositories/food_listing_repository_impl.dart';
import 'package:food_recipe/features/foods/domain/entities/food_listing_entity.dart';
import 'package:food_recipe/features/foods/domain/usecases/get_drink_listing.dart';
import 'package:food_recipe/features/foods/domain/usecases/get_food.dart';
import 'package:get/get.dart';

class FoodListingController extends GetxController {
  final repo = FoodListingRepositoryImpl();

  Rx<FoodListingEntity> foodListingEntity = FoodListingEntity().obs;
  Rx<bool> isLoading = false.obs;

  // init func
  late final GetFood getFoods;
  late final GetDrinkListing getDrinks;

  @override
  void onInit() {
    // regist init func with repo implement
    getFoods = GetFood(repository: repo);
    getDrinks = GetDrinkListing(repository: repo);

    foodListingInit();

    super.onInit();
  }

  Future<void> foodListingInit() async {
    isLoading.value = true;

    final res = await Future.wait([
      getFoods.execute(),
      getDrinks.execute(),
    ]);

    foodListingEntity.value.foods = res[0] as List<Food>;
    foodListingEntity.value.drinks = res[1] as List<Drink>;

    isLoading.value = false;
    update();
  }
}
