import 'dart:convert';

import 'package:food_recipe/core/data/models/user_model.dart';
import 'package:food_recipe/core/domain/entities/user.dart';
import 'package:get_storage/get_storage.dart';

class StorageUser {
  final String spKey;
  final GetStorage storage;

  StorageUser({
    required this.spKey,
    required this.storage,
  });

  User get() {
    final data = storage.read(spKey);
    if (data == null) return User();
    final json = jsonDecode(data);
    final user = UserModel.fromJson(json);
    return user.toEntity();
  }

  void save(User value) {
    final user = UserModel(name: value.name, age: value.age);
    final data = user.toJson();
    final json = jsonEncode(data);
    storage.write(spKey, json);
  }

  void clear() {
    storage.remove(spKey);
  }
}
