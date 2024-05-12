import 'package:food_recipe/core/config/storage_keys.dart';
import 'package:food_recipe/core/domain/entities/food.dart';
import 'package:food_recipe/core/domain/entities/storage_food.dart';
import 'package:food_recipe/features/foods/data/datasources/http_get_food_detail.dart';
import 'package:food_recipe/features/foods/domain/repositories/food_detail_repository.dart';
import 'package:get_storage/get_storage.dart';

class FoodDetailRespositoryImpl implements FoodDetailRespository {
  late final StorageFood storageFood;

  FoodDetailRespositoryImpl({required GetStorage storage}) {
    storageFood = StorageFood(
      spKey: StorageKeys.storageFood,
      storage: storage,
    );
  }

  @override
  Future<Food> getFoodDetail({required int foodId}) async {
    final res = await httpGetFoodDetail(foodId: foodId);
    return res.toEntity();
  }

  @override
  bool checkIsFavoriteFood({required Food food}) {
    final foods = storageFood.get();
    final findFood = foods.where((element) => element.id == food.id);
    return findFood.isNotEmpty;
  }

  @override
  void addFoodFavorite({required Food food}) {
    storageFood.addFavorite(food);
  }

  @override
  void removeFavoriteFood({required Food food}) {
    storageFood.removeFavorite(food);
  }
}
