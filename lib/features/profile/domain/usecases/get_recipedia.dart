import 'package:food_recipe/features/profile/domain/entities/recipedia_entities.dart';
import 'package:food_recipe/features/profile/domain/repositories/recipedia_repository.dart';

class GetRecipedia {
  final RecipediaRepository repository;

  GetRecipedia({required this.repository});

  Future<List<Recipedia>> execute() async {
    return await repository.getRecipedia();
  }
}
