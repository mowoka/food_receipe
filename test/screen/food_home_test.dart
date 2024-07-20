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
  testWidgets('Food Home screen testing', (WidgetTester tester) async {
    await tester.pumpWidget(createFoodListingScreen());
    await tester.pumpAndSettle();
    expect(find.text('Hello, Recipe'), findsAtLeastNWidgets(1));
    expect(find.text('Indomie Kuah'), findsAtLeastNWidgets(1));
    expect(find.text('Takoyaki'), findsAtLeastNWidgets(1));
    expect(find.text('Teh Manis'), findsAtLeastNWidgets(1));
    expect(find.text('More'), findsAtLeastNWidgets(1));

    // ?test btn more drinks carousel
    final btnDrinkMore = find.byKey(const Key('btn_more_drinks'));
    await tester.ensureVisible(btnDrinkMore);
    await tester.tap(btnDrinkMore);
    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();
    expect(find.byIcon(Icons.menu), findsOneWidget);

    Get.back();
    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    // ? test btn more latest
    final btnLatestMore = find.byKey(const Key('btn_more_latest'));
    await tester.ensureVisible(btnLatestMore);
    await tester.tap(btnLatestMore);
    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();
    expect(find.byIcon(Icons.menu), findsOneWidget);

    Get.back();
    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    // ? test btn more suggestion
    final btnSuggestionMore = find.byKey(const Key('btn_more_suggestion'));
    await tester.ensureVisible(btnSuggestionMore);
    await tester.tap(btnSuggestionMore);
    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();
    expect(find.byIcon(Icons.menu), findsOneWidget);

    Get.back();
    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    // ? testing carousel item btn
    final btnDrinkCarouselItem = find.byKey(const Key('drink_item_1'));
    await tester.ensureVisible(btnDrinkCarouselItem);
    await tester.tap(btnDrinkCarouselItem);
    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();
    expect(find.text('Teh Manis'), findsOneWidget);

    Get.back();
    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const Key('bottom_navigation_person')));
    await tester.pumpAndSettle();
    expect(
      find.text("Let's make food memories, it's a cooking kind of day!"),
      findsOneWidget,
    );
  });
}
