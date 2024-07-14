import 'package:flutter_test/flutter_test.dart';
import 'package:food_recipe/core/config/page_route.dart';
import 'package:food_recipe/features/profile/presentation/routes/profile.dart';
import 'package:get/get.dart';

GetMaterialApp createProfileScreen() {
  return GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Hello Recipe',
    home: const Profile(),
    getPages: AppPage.pages,
  );
}

void main() {
  testWidgets('Profile menu screen', (WidgetTester tester) async {
    await tester.pumpWidget(createProfileScreen());
    await tester.pumpAndSettle();
    expect(find.text("Let's make food memories, it's a cooking kind of day!"),
        findsAtLeastNWidgets(1));

    // ? Testing for route to recipedia screen
    await tester.tap(find.text('Recipedia'));
    await tester.pumpAndSettle();
    expect(find.text('Recipedia'), findsOneWidget);
    Get.back();
    await tester.pumpAndSettle();

    // ? Testing for route to ingredients wikipedia screen
    await tester.tap(find.text('Ingredients Wikipedia'));
    await tester.pumpAndSettle();
    expect(find.text('Ingredients Wiki'), findsOneWidget);
    Get.back();
    await tester.pumpAndSettle();

    // ? Testing for route hapus button
    await tester.tap(find.text('Hapus Akun'));
    await tester.pumpAndSettle();
    expect(find.text('Welcome'), findsOneWidget);
  });
}
