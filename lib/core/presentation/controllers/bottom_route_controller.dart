import 'package:food_recipe/core/config/route_name.dart';
import 'package:get/get.dart';

class BottomRouteController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
    changePage(index);
  }

  void changePage(int index) {
    switch (index) {
      case 0:
        Get.offNamed(RouteName.foodListing);
        break;
      case 1:
        // favorite page
        Get.offNamed(RouteName.foodListing);
        break;
      case 2:
        // person page
        Get.offNamed(RouteName.foodListing);
        break;
      default:
        Get.offNamed(RouteName.foodListing);
        break;
    }
  }
}
