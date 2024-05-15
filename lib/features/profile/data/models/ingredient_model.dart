import 'package:food_recipe/features/profile/domain/entities/ingredient_wikipedia_entities.dart';

class IngredientModel {
  final int id;
  final String name;
  final String image;
  final String description;
  final List<String> buyAt;

  IngredientModel({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.buyAt,
  });

  factory IngredientModel.fromJson(dynamic json) {
    return IngredientModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      description: json['description'],
      buyAt: (json['buy_at'] as List).map((e) => e.toString()).toList(),
    );
  }

  Ingredient toEntity() {
    return Ingredient()
      ..id = id
      ..name = name
      ..image = image
      ..description = description
      ..buyAt = buyAt;
  }
}
