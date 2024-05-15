import 'package:food_recipe/core/domain/entities/user.dart';
import 'package:food_recipe/features/splash/domain/repository/splash_repository.dart';

class StorageGetUser {
  final SplashRepository repository;

  StorageGetUser({
    required this.repository,
  });

  User execute() {
    return repository.getUser();
  }
}
