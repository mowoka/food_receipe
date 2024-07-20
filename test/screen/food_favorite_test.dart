import 'package:flutter/material.dart';
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
  testWidgets('test Favorite food flow testing', (WidgetTester tester) async {
    await tester.pumpWidget(createFoodListingScreen());
    await tester.pumpAndSettle();
    expect(find.text('Hello, Recipe'), findsAtLeastNWidgets(1));

    await tester.tap(find.text('Indomie Kuah'));
    await tester.pumpAndSettle();
    expect(find.text('Indomie Kuah'), findsOneWidget);

    // * testing add favorite food
    await tester.tap(find.byKey(const Key('btn_favorite')));
    await tester.pump();
    Get.back();
    await tester.pumpAndSettle();
    expect(find.text('Hello, Recipe'), findsAtLeastNWidgets(1));

    await tester.tap(find.byKey(const Key('bottom_navigation_favorite')));
    await tester.pumpAndSettle();
    // * check on favorite screen have Indomie Kuah on favorite list
    expect(find.text('My Favorite'), findsOneWidget);
    expect(find.text('Indomie Kuah'), findsOneWidget);

    // * Go to food detail to test remove favorite
    await tester.tap(find.text('Indomie Kuah'));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('btn_favorite')));
    await tester.pump();
    Get.back();
    await tester.pumpAndSettle();
    expect(find.text('Indomie Kuah'), findsNothing);
  });
}
