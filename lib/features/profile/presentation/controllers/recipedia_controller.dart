import 'package:food_recipe/features/profile/data/repositories/recipedia_repository_impl.dart';
import 'package:food_recipe/features/profile/domain/entities/recipedia_entities.dart';
import 'package:food_recipe/features/profile/domain/usecases/get_recipedia.dart';
import 'package:get/get.dart';

class RecipediaController extends GetxController {
  final repo = RecipediaRepositoryImpl();

  Rx<RecipediaEntity> recipediaEntity = RecipediaEntity().obs;
  Rx<bool> isLoading = false.obs;

  // init func
  late final GetRecipedia getRecipedia;

  @override
  void onInit() {
    // regist init func with repo implement
    getRecipedia = GetRecipedia(repository: repo);

    onLoad();
    super.onInit();
  }

  void onLoad() async {
    isLoading.value = true;

    recipediaEntity.value.data = await getRecipediaList();

    isLoading.value = false;
    update();
  }

  Future<List<Recipedia>> getRecipediaList() async {
    return await getRecipedia.execute();
  }
}
