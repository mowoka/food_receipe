import 'package:food_recipe/core/domain/entities/drink.dart';

class DrinkModel {
  DrinkModel({
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

  factory DrinkModel.fromJson(dynamic json) {
    return DrinkModel(
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

  Drink toEntity() {
    return Drink()
      ..id = id
      ..name = name
      ..image = image
      ..author = author
      ..ingredients = ingredients
      ..howToMake = howToMake;
  }
}
