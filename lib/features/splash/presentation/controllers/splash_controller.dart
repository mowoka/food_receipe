import 'dart:async';

import 'package:food_recipe/core/config/route_name.dart';
import 'package:food_recipe/core/domain/entities/user.dart';
import 'package:food_recipe/features/splash/data/repository/splash_repository_impl.dart';
import 'package:food_recipe/features/splash/domain/usecases/storage_get_user.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController {
  final repo = SplashRepositoryImpl(
    storage: GetStorage(),
  );

  // init func
  late final StorageGetUser storageGetUser;

  @override
  void onInit() {
    // regist init func with repo implement
    storageGetUser = StorageGetUser(repository: repo);
    final user = storageGetUser.execute();
    onLoad(user);
    super.onInit();
  }

  void onLoad(User user) {
    Timer(const Duration(seconds: 2), () {
      if (user.name.isNotEmpty) {
        Get.offNamed(RouteName.foodHome);
      } else {
        Get.offNamed(RouteName.welcome);
      }
    });
  }
}
