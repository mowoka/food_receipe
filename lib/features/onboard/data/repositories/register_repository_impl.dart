import 'package:food_recipe/core/config/storage_keys.dart';
import 'package:food_recipe/core/domain/entities/storage_user.dart';
import 'package:food_recipe/core/domain/entities/user.dart';
import 'package:food_recipe/features/onboard/domain/repositories/register_repository.dart';
import 'package:get_storage/get_storage.dart';

class RegisterRepositoryImpl implements RegisterRepository {
  late final StorageUser storageUser;

  RegisterRepositoryImpl({required GetStorage storage}) {
    storageUser = StorageUser(spKey: StorageKeys.storageUser, storage: storage);
  }

  @override
  void saveUser({required String name}) {
    final user = User()
      ..name = name
      ..age = '20';

    storageUser.save(user);
  }
}
