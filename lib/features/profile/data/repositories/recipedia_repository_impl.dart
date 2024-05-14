import 'package:food_recipe/features/profile/data/datasources/http_get_recipedia.dart';
import 'package:food_recipe/features/profile/domain/entities/recipedia_entities.dart';
import 'package:food_recipe/features/profile/domain/repositories/recipedia_repository.dart';

class RecipediaRepositoryImpl implements RecipediaRepository {
  @override
  Future<List<Recipedia>> getRecipedia() async {
    final res = await httpGetRecipedia();

    return res.map((e) => e.toEntity()).toList();
  }
}
