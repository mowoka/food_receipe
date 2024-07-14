import 'package:flutter_test/flutter_test.dart';
import 'package:food_recipe/core/config/page_route.dart';
import 'package:food_recipe/features/profile/presentation/routes/ingredient_wikipedia.dart';
import 'package:get/get.dart';

GetMaterialApp createIngdredientWikiScreen() {
  return GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Hello Recipe',
    home: const IngredientWikipedia(),
    getPages: AppPage.pages,
  );
}

void main() {
  testWidgets('testing wiki ingredient screen', (WidgetTester tester) async {
    await tester.pumpWidget(createIngdredientWikiScreen());
    await tester.pumpAndSettle();
    expect(find.text("Ingredients Wiki"), findsAtLeastNWidgets(1));
    expect(find.text("Bawang Merah"), findsAtLeastNWidgets(1));
    await tester.tap(find.text('Bawang Merah'));
    await tester.pump();
    expect(find.text("pasar"), findsAtLeastNWidgets(1));
    expect(find.text("supermarket"), findsAtLeastNWidgets(1));
  });
}
