import 'package:flutter_test/flutter_test.dart';
import 'package:food_recipe/core/config/page_route.dart';
import 'package:food_recipe/features/profile/presentation/routes/recipedia.dart';
import 'package:get/get.dart';

GetMaterialApp createRecepediaScreen() {
  return GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Hello Recipe',
    home: const RecipediaPage(),
    getPages: AppPage.pages,
  );
}

void main() {
  testWidgets('testing recepedia screen', (WidgetTester tester) async {
    await tester.pumpWidget(createRecepediaScreen());
    await tester.pumpAndSettle();
    expect(find.text("Recipedia"), findsAtLeastNWidgets(1));
    expect(find.text("Sdt"), findsAtLeastNWidgets(1));
  });
}
