import 'package:food_recipe/features/profile/domain/entities/ingredient_wikipedia_entities.dart';

abstract class IngredientWikipediaRepository {
  Future<List<Ingredient>> getIndegrients();
}
