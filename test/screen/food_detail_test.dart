import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_recipe/core/config/page_route.dart';
import 'package:food_recipe/features/foods/presentation/routes/food_home.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

GetMaterialApp createFoodListingScreen() {
  return GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Hello Recipe',
    home: const FoodHome(),
    getPages: AppPage.pages,
  );
}

void main() {
  testWidgets('Food detail flow testing', (WidgetTester tester) async {
    await tester.pumpWidget(createFoodListingScreen());
    await tester.pumpAndSettle();
    expect(find.text('Hello, Recipe'), findsAtLeastNWidgets(1));

    await tester.tap(find.text('Indomie Kuah'));
    await tester.pumpAndSettle();
    expect(find.text('Indomie Kuah'), findsAtLeastNWidgets(1));

    await tester.tap(find.byKey(const Key('btn_back')));
    await tester.pumpAndSettle();
    expect(find.text('Hello, Recipe'), findsAtLeastNWidgets(1));
  });
}
