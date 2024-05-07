import 'package:food_recipe/features/foods/data/repositories/drink_detail_repository_impl.dart';
import 'package:food_recipe/features/foods/domain/entities/drink_detail_entity.dart';
import 'package:food_recipe/features/foods/domain/usecases/get_drink_detail.dart';
import 'package:get/get.dart';

class DrinkDetailController extends GetxController {
  final repo = DrinkDetailRepositoryImpl();

  Rx<DrinkDetailEntity> drinkDetailEntity = DrinkDetailEntity().obs;
  Rx<bool> isLoading = false.obs;

  // init func
  late final GetDrinkDetail getDrinkDetail;

  @override
  void onInit() {
    // regist init func with repo implement
    getDrinkDetail = GetDrinkDetail(respository: repo);

    super.onInit();
  }

  Future<void> getDrink({required int drinkId}) async {
    isLoading.value = true;
    final drink = await getDrinkDetail.execute(drinkId: drinkId);
    drinkDetailEntity.value.data = drink;
    isLoading.value = false;
    update();
  }
}
