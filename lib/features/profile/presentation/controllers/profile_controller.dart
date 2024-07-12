import 'package:food_recipe/core/domain/entities/user.dart';
import 'package:food_recipe/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:food_recipe/features/profile/domain/usecases/storage_delete_user.dart';
import 'package:food_recipe/features/profile/domain/usecases/storage_get_user.dart';
import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';

class ProfileController extends GetxController {
  final repo = ProfileRepositoryImpl(
    storage: GetStorage(),
  );

  Rx<User> user = User().obs;

  // init func
  late final StorageGetUser storageGetUser;
  late final StorageDeleteUser storageDeleteUser;

  @override
  void onInit() {
    // regist init func with repo implement
    storageGetUser = StorageGetUser(repository: repo);
    storageDeleteUser = StorageDeleteUser(repository: repo);

    onLoad();
    super.onInit();
  }

  void onLoad() {
    user.value = getUserData();
    update();
  }

  User getUserData() {
    return storageGetUser.execute();
  }

  void deteleUser() {
    return storageDeleteUser.execute();
  }
}
