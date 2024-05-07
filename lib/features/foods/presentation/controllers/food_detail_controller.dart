import 'package:food_recipe/features/foods/data/repositories/food_detail_respository_impl.dart';
import 'package:food_recipe/features/foods/domain/entities/food_detail_entity.dart';
import 'package:food_recipe/features/foods/domain/usecases/get_food_detail.dart';
import 'package:get/get.dart';

class FoodDetailController extends GetxController {
  final repo = FoodDetailRespositoryImpl();

  Rx<FoodDetailEntity> foodDetailEntity = FoodDetailEntity().obs;
  Rx<bool> isLoading = false.obs;

  // init func
  late final GetFoodDetail getFoodDetail;

  @override
  void onInit() {
    // regist init func with repo implement
    getFoodDetail = GetFoodDetail(respository: repo);

    super.onInit();
  }

  Future<void> getFoodDetailData({required int foodId}) async {
    isLoading.value = true;
    final food = await getFoodDetail.execute(foodId: foodId);
    foodDetailEntity.value.data = food;
    isLoading.value = false;
    update();
  }
}
