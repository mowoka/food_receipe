import 'package:food_recipe/features/profile/domain/entities/recipedia_entities.dart';

abstract class RecipediaRepository {
  Future<List<Recipedia>> getRecipedia();
}
