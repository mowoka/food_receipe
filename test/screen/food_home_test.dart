import 'package:flutter_test/flutter_test.dart';
import 'package:food_recipe/core/config/page_route.dart';
import 'package:food_recipe/features/foods/presentation/routes/food_home.dart';
import 'package:get/get.dart';

GetMaterialApp createFoodListingScreen() {
  return GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Hello Recipe',
    home: const FoodHome(),
    getPages: AppPage.pages,
  );
}

void main() {
  testWidgets('Food Home screen testing', (WidgetTester tester) async {
    await tester.pumpWidget(createFoodListingScreen());
    await tester.pumpAndSettle();
    expect(find.text('Hello, Recipe'), findsAtLeastNWidgets(1));
    expect(find.text('Indomie Kuah'), findsAtLeastNWidgets(1));
    expect(find.text('Takoyaki'), findsAtLeastNWidgets(1));
    expect(find.text('Teh Manis'), findsAtLeastNWidgets(1));
    expect(find.text('More'), findsAtLeastNWidgets(1));
  });
}
