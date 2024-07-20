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
  testWidgets('test Favorite drink flow testing', (WidgetTester tester) async {
    await tester.pumpWidget(createFoodListingScreen());
    await tester.pumpAndSettle();
    expect(find.text('Hello, Recipe'), findsAtLeastNWidgets(1));

    // * Drag until find the drink carousel
    await tester.dragUntilVisible(
      find.text('Drink'), // what you want to find
      find.byKey(const Key('drink_section')), // widget you want to scroll
      const Offset(0, 500), // delta to move
    );
    await tester.tap(find.text('Teh Manis'));
    await tester.pumpAndSettle();
    expect(find.text('Teh Manis'), findsOneWidget);

    // * testing add favorite drink
    await tester.tap(find.byKey(const Key('btn_favorite')));
    await tester.pump();
    Get.back();
    await tester.pumpAndSettle();
    expect(find.text('Hello, Recipe'), findsAtLeastNWidgets(1));

    await tester.tap(find.byKey(const Key('bottom_navigation_favorite')));
    await tester.pumpAndSettle();
    // * check on favorite screen have Teh Manis on favorite list
    expect(find.text('My Favorite'), findsOneWidget);
    expect(find.text('Teh Manis'), findsOneWidget);

    // * Go to drink detail to test remove favorite
    await tester.tap(find.text('Teh Manis'));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('btn_favorite')));
    await tester.pump();
    Get.back();
    await tester.pumpAndSettle();
    expect(find.text('Teh Manis'), findsNothing);
  });
}
