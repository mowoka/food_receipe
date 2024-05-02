import 'package:food_recipe/features/foods/domain/entities/food_listing_entity.dart';
import 'package:get/get.dart';

class FoodListingController extends GetxController {
  RxList<Food> foodSuggestions = <Food>[].obs;
  RxList<Food> latestFood = <Food>[].obs;

  @override
  void onInit() {
    getFoodSuggestion();
    super.onInit();
  }

  void getFoodSuggestion() {
    foodSuggestions.value = FoodListingEntity().foodSuggestion;
    latestFood.value = FoodListingEntity().latesFood;
    update();
  }
}
