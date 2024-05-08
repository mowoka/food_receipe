import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:food_recipe/features/foods/domain/repositories/food_listing_reporsitory.dart';

class GetDrinkListing {
  final FoodListingRepository repository;

  GetDrinkListing({required this.repository});

  Future<List<Drink>> execute() async {
    return await repository.getDrinks();
  }
}
