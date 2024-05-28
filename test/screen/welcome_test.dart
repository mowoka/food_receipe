import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_recipe/core/config/page_route.dart';
import 'package:food_recipe/features/onboard/presentation/routes/welcome.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

GetMaterialApp createWelcomeScreen() {
  return GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Hello Recipe',
    home: const Welcome(),
    getPages: AppPage.pages,
  );
}

void main() {
  testWidgets('Welcom screen testing', (WidgetTester tester) async {
    await tester.pumpWidget(createWelcomeScreen());
    await tester.pumpAndSettle();
    expect(find.text('Welcome'), findsAtLeastNWidgets(1));
    await tester.tap(find.byType(InkWell));
    await tester.pumpAndSettle();
    expect(
      find.text("Let's get started! \n What should I know you by?"),
      findsAtLeastNWidgets(1),
    );
  });
}
