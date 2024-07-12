import 'package:food_recipe/features/profile/domain/repositories/profile_repository.dart';

class StorageDeleteUser {
  final ProfileRepository repository;

  StorageDeleteUser({required this.repository});

  void execute() {
    return repository.deleteUser();
  }
}
