import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:food_recipe/features/foods/data/datasources/http_get_drink_detail.dart';
import 'package:food_recipe/features/foods/domain/repositories/drink_detail_repository.dart';

class DrinkDetailRepositoryImpl implements DrinkDetailRepository {
  @override
  Future<Drink> getDrink({required int drinkId}) async {
    final res = await httpGetDrinkDetail(drinkId: drinkId);
    return res.toEntity();
  }
}
