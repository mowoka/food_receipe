import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:food_recipe/core/domain/entities/food.dart';

class FoodListingEntity {
  List<Food> foods = [
    Food()
      ..id = 0
      ..name = ""
      ..author = ""
      ..image = ''
      ..howToMake = []
      ..ingredients = [],
    Food()
      ..id = 0
      ..name = ""
      ..author = ""
      ..image = ''
      ..howToMake = []
      ..ingredients = [],
    Food()
      ..id = 0
      ..name = ""
      ..author = ""
      ..image = ''
      ..howToMake = []
      ..ingredients = [],
  ];
  List<Drink> drinks = [];
}
