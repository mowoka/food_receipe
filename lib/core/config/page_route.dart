import 'package:food_recipe/core/config/route_name.dart';
import 'package:food_recipe/features/foods/presentation/routes/food_detail.dart';
import 'package:food_recipe/features/foods/presentation/routes/food_home.dart';
import 'package:get/route_manager.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: RouteName.foodListing,
      page: () => const FoodHome(),
    ),
    GetPage(
      name: RouteName.foodDetail,
      page: () => const FoodDetail(),
    ),
  ];
}
