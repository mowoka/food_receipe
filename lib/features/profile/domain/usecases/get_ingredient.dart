import 'package:food_recipe/features/profile/domain/entities/ingredient_wikipedia_entities.dart';
import 'package:food_recipe/features/profile/domain/repositories/ingredient_wikipedia_repository.dart';

class GetIngredient {
  final IngredientWikipediaRepository repository;

  GetIngredient({required this.repository});

  Future<List<Ingredient>> execute() async {
    return await repository.getIndegrients();
  }
}
