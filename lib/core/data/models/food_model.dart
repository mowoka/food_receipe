import 'package:food_recipe/core/domain/entities/food.dart';

class FoodModel {
  FoodModel({
    required this.id,
    required this.name,
    required this.image,
    required this.author,
    required this.ingredients,
    required this.howToMake,
  });

  final int id;
  final String name;
  final String image;
  final String author;
  final List<String> ingredients;
  final List<String> howToMake;

  factory FoodModel.fromJson(dynamic json) {
    return FoodModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      author: json['author'],
      ingredients: (json['ingredients'] as List)
          .map(
            (e) => e.toString(),
          )
          .toList(),
      howToMake: (json['how_to_make'] as List)
          .map(
            (e) => e.toString(),
          )
          .toList(),
    );
  }

  Food toEntity() {
    return Food()
      ..id = id
      ..name = name
      ..image = image
      ..author = author
      ..ingredients = ingredients
      ..howToMake = howToMake;
  }
}