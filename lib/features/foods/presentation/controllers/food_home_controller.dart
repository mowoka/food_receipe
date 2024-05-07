import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:food_recipe/core/domain/entities/food.dart';
import 'package:food_recipe/features/foods/data/repositories/food_home_repository_impl.dart';
import 'package:food_recipe/features/foods/domain/usecases/get_drink.dart';
import 'package:food_recipe/features/foods/domain/usecases/get_food_latest.dart';

import 'package:food_recipe/features/foods/domain/usecases/get_food_suggestion.dart';
import 'package:get/get.dart';

class FoodHomeController extends GetxController {
  final repo = FoodHomeRepositoryImpl();

  RxList<Food> foodSuggestions = <Food>[].obs;
  RxList<Food> latestFood = <Food>[].obs;
  RxList<Drink> drinks = <Drink>[].obs;

  // init func
  late final GetFoodSuggestion getFoodSuggestion;
  late final GetLatestFood getLatestFood;
  late final GetDrink getDrink;

  @override
  void onInit() {
    // regist init func with repo implement
    getFoodSuggestion = GetFoodSuggestion(repository: repo);
    getLatestFood = GetLatestFood(repository: repo);
    getDrink = GetDrink(respository: repo);

    getFoodListingData();
    super.onInit();
  }

  Future<void> getFoodListingData() async {
    final res = await Future.wait([
      getFoodSuggestion.execute(),
      getLatestFood.execute(),
      getDrink.execute()
    ]);

    foodSuggestions.value = res[0] as List<Food>;
    latestFood.value = res[1] as List<Food>;
    drinks.value = res[2] as List<Drink>;

    update();
  }
}
