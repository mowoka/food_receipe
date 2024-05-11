import 'package:food_recipe/core/domain/entities/food.dart';
import 'package:food_recipe/features/foods/data/repositories/food_detail_respository_impl.dart';
import 'package:food_recipe/features/foods/domain/entities/food_detail_entity.dart';
import 'package:food_recipe/features/foods/domain/usecases/get_food_detail.dart';
import 'package:food_recipe/features/foods/domain/usecases/storage_add_favorite_food.dart';
import 'package:food_recipe/features/foods/domain/usecases/storage_check_is_favorite_food.dart';
import 'package:food_recipe/features/foods/domain/usecases/storage_remove_favorite_food.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class FoodDetailController extends GetxController {
  final repo = FoodDetailRespositoryImpl(
    storage: GetStorage(),
  );

  Rx<FoodDetailEntity> foodDetailEntity = FoodDetailEntity().obs;
  Rx<bool> isLoading = false.obs;
  Rx<bool> isFavoriteFood = false.obs;

  // init func
  late final GetFoodDetail getFoodDetail;
  late final CheckIsFavoriteFood checkIsFavoriteFood;
  late final AddFavoriteFood addFavoriteFood;
  late final RemoveFavoriteFood removeFavoriteFood;

  @override
  void onInit() {
    // regist init func with repo implement
    getFoodDetail = GetFoodDetail(respository: repo);
    checkIsFavoriteFood = CheckIsFavoriteFood(respository: repo);
    addFavoriteFood = AddFavoriteFood(respository: repo);
    removeFavoriteFood = RemoveFavoriteFood(respository: repo);

    super.onInit();
  }

  Future<void> getFoodDetailData({required int foodId}) async {
    isLoading.value = true;

    final food = await getFoodDetail.execute(foodId: foodId);
    foodDetailEntity.value.data = food;
    checkIsFavFood(food: food);

    isLoading.value = false;
    update();
  }

  void checkIsFavFood({required Food food}) {
    isFavoriteFood.value = checkIsFavoriteFood.execute(food: food);
    update();
  }

  void addFavFood({required Food food}) {
    addFavoriteFood.execute(food: food);
    checkIsFavFood(food: food);
    update();
  }

  void removeFavFood({required Food food}) {
    removeFavoriteFood.execute(food: food);
    checkIsFavFood(food: food);
    update();
  }
}
