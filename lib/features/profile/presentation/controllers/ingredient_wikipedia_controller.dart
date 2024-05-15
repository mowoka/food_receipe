import 'package:food_recipe/features/profile/data/repositories/ingredient_wikipedia_repository_impl.dart';
import 'package:food_recipe/features/profile/domain/entities/ingredient_wikipedia_entities.dart';
import 'package:food_recipe/features/profile/domain/usecases/get_ingredient.dart';
import 'package:get/get.dart';

class IngredientWikipediaController extends GetxController {
  final repo = IngredientWikipediaReposiotryImpl();

  Rx<IngredientWikipediaEntity> ingredientWikipediaEntity =
      IngredientWikipediaEntity().obs;
  Rx<bool> isLoading = false.obs;

  // init func
  late final GetIngredient getIngredient;

  @override
  void onInit() {
    // regist init func with repo implement
    getIngredient = GetIngredient(repository: repo);

    onLoad();
    super.onInit();
  }

  void onLoad() async {
    isLoading.value = true;

    ingredientWikipediaEntity.value.data = await getIngredientList();

    isLoading.value = false;
    update();
  }

  Future<List<Ingredient>> getIngredientList() async {
    return await getIngredient.execute();
  }
}
