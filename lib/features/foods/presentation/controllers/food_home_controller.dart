import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:food_recipe/core/domain/entities/food.dart';
import 'package:food_recipe/features/foods/domain/entities/food_home_entity.dart';
import 'package:get/get.dart';

class FoodHomeController extends GetxController {
  RxList<Food> foodSuggestions = <Food>[].obs;
  RxList<Food> latestFood = <Food>[].obs;
  RxList<Drink> drinks = <Drink>[].obs;

  @override
  void onInit() {
    getFoodSuggestion();
    super.onInit();
  }

  void getFoodSuggestion() {
    foodSuggestions.value = FoodHomeEntity().foodSuggestion;
    latestFood.value = FoodHomeEntity().latesFood;
    drinks.value = FoodHomeEntity().drink;
    update();
  }
}
