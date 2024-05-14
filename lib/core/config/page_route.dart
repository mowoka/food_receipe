import 'package:food_recipe/core/config/route_name.dart';
import 'package:food_recipe/features/favorite/presentation/routes/favorite.dart';
import 'package:food_recipe/features/foods/presentation/routes/drink_detail.dart';
import 'package:food_recipe/features/foods/presentation/routes/food_detail.dart';
import 'package:food_recipe/features/foods/presentation/routes/food_home.dart';
import 'package:food_recipe/features/foods/presentation/routes/food_listing.dart';
import 'package:food_recipe/features/profile/presentation/routes/profile.dart';
import 'package:get/route_manager.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: RouteName.foodHome,
      page: () => const FoodHome(),
    ),
    GetPage(
      name: RouteName.foodDetail,
      page: () => const FoodDetail(),
    ),
    GetPage(
      name: RouteName.foodListing,
      page: () => const FoodListing(),
    ),
    GetPage(
      name: RouteName.drinkDetail,
      page: () => const DrinkDetail(),
    ),
    GetPage(
      name: RouteName.favorite,
      page: () => const Favorite(),
    ),
    GetPage(
      name: RouteName.profile,
      page: () => const Profile(),
    ),
  ];
}
