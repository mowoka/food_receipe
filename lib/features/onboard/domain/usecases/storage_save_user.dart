import 'package:food_recipe/features/onboard/domain/repositories/register_repository.dart';

class StorageSaveUser {
  final RegisterRepository repository;

  StorageSaveUser({required this.repository});

  void execute({required String name}) {
    return repository.saveUser(name: name);
  }
}
