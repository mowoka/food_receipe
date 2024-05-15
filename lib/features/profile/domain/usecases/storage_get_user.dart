import 'package:food_recipe/core/domain/entities/user.dart';
import 'package:food_recipe/features/profile/domain/repositories/profile_repository.dart';

class StorageGetUser {
  final ProfileRepository repository;

  StorageGetUser({required this.repository});

  User execute() {
    return repository.getUser();
  }
}
