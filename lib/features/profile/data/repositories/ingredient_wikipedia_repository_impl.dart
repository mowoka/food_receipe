import 'package:food_recipe/features/profile/data/datasources/http_get_ingredient.dart';
import 'package:food_recipe/features/profile/domain/entities/ingredient_wikipedia_entities.dart';
import 'package:food_recipe/features/profile/domain/repositories/ingredient_wikipedia_repository.dart';

class IngredientWikipediaReposiotryImpl
    implements IngredientWikipediaRepository {
  @override
  Future<List<Ingredient>> getIndegrients() async {
    final res = await httpGetIngredient();
    return res.map((e) => e.toEntity()).toList();
  }
}
