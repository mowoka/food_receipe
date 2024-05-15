import 'package:food_recipe/core/domain/entities/user.dart';

class UserModel {
  final String name;
  final String age;

  const UserModel({
    required this.name,
    required this.age,
  });

  toJson() {
    return {
      "name": name,
      "age": age,
    };
  }

  factory UserModel.fromJson(dynamic json) {
    return UserModel(
      name: json['name'],
      age: json['age'],
    );
  }

  factory UserModel.createEmpty() {
    return const UserModel(name: '', age: '');
  }

  User toEntity() {
    return User()
      ..name = name
      ..age = age;
  }
}
