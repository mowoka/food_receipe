import 'package:food_recipe/features/profile/domain/entities/recipedia_entities.dart';

class RecipediaModel {
  final int id;
  final String name;
  final String description;

  RecipediaModel({
    required this.id,
    required this.name,
    required this.description,
  });

  factory RecipediaModel.fromJson(dynamic json) {
    return RecipediaModel(
      id: json["id"],
      name: json['name'],
      description: json['description'],
    );
  }

  Recipedia toEntity() {
    return Recipedia()
      ..id = id
      ..name = name
      ..description = description;
  }
}
