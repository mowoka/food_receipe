import 'package:food_recipe/core/domain/entities/food.dart';
import 'package:food_recipe/features/foods/domain/repositories/food_listing_reporsitory.dart';

class GetFood {
  final FoodListingRepository repository;

  GetFood({required this.repository});

  Future<List<Food>> execute() async {
    return await repository.getFoods();
  }
}
