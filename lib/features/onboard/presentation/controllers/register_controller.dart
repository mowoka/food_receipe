import 'package:flutter/material.dart';
import 'package:food_recipe/features/onboard/data/repositories/register_repository_impl.dart';
import 'package:food_recipe/features/onboard/domain/usecases/storage_save_user.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RegisterController extends GetxController {
  final repo = RegisterRepositoryImpl(
    storage: GetStorage(),
  );

  Rx<TextEditingController> nameController = TextEditingController().obs;

  // init func
  late final StorageSaveUser storageSaveUser;

  @override
  void onInit() {
    // regist init func with repo implement
    storageSaveUser = StorageSaveUser(repository: repo);

    super.onInit();
  }

  void registerUser({required String name}) {
    storageSaveUser.execute(name: name);
  }
}
