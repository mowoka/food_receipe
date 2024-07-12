import 'package:food_recipe/core/config/storage_keys.dart';
import 'package:food_recipe/core/domain/entities/storage_user.dart';
import 'package:food_recipe/core/domain/entities/user.dart';
import 'package:food_recipe/features/profile/domain/repositories/profile_repository.dart';
import 'package:get_storage/get_storage.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  late final StorageUser storageUser;

  ProfileRepositoryImpl({required GetStorage storage}) {
    storageUser = StorageUser(spKey: StorageKeys.storageUser, storage: storage);
  }

  @override
  User getUser() {
    return storageUser.get();
  }

  @override
  void deleteUser() {
    storageUser.clear();
  }
}
