import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:food_recipe/core/domain/entities/food.dart';
import 'package:food_recipe/features/foods/data/repositories/food_home_repository_impl.dart';
import 'package:food_recipe/features/foods/domain/entities/food_home_entity.dart';
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

  @override
  void onInit() {
    // regist init func with repo implement
    getFoodSuggestion = GetFoodSuggestion(repository: repo);
    getLatestFood = GetLatestFood(repository: repo);

    foodHomeInit();
    super.onInit();
  }

  Future<void> foodHomeInit() async {
    foodSuggestions.value = await getFoodSuggestionList();
    latestFood.value = await getLatestFoodList();
    drinks.value = FoodHomeEntity().drink;
    update();
  }

  Future<List<Food>> getFoodSuggestionList() {
    return getFoodSuggestion.execute();
  }

  Future<List<Food>> getLatestFoodList() {
    return getLatestFood.execute();
  }
}
