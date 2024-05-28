import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_recipe/core/config/page_route.dart';
import 'package:food_recipe/core/domain/entities/storage_user.dart';
import 'package:food_recipe/features/onboard/domain/usecases/storage_save_user.dart';
import 'package:food_recipe/features/onboard/presentation/controllers/register_controller.dart';
import 'package:food_recipe/features/onboard/presentation/routes/register.dart';
import 'package:get/get.dart';
import 'package:mockito/annotations.dart';

GetMaterialApp createFoodListingScreen() {
  return GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Hello Recipe',
    home: const Register(),
    getPages: AppPage.pages,
  );
}

@GenerateNiceMocks([MockSpec<StorageUser>()])
@GenerateNiceMocks([MockSpec<StorageSaveUser>()])
@GenerateNiceMocks([MockSpec<RegisterController>()])
void main() {
  testWidgets('Register screen testing', (WidgetTester tester) async {
    await tester.pumpWidget(createFoodListingScreen());
    await tester.pumpAndSettle();
    expect(
      find.text("Let's get started! \n What should I know you by?"),
      findsAtLeastNWidgets(1),
    );
    await tester.tap(find.text('Next'));
    await tester.pump(const Duration(milliseconds: 1000));
    expect(find.text('Alert'), findsOneWidget);
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextFormField), 'Mokaz');
    await tester.tap(find.text('Next'));
    await tester.pumpAndSettle();
    expect(find.text('Hello, Recipe'), findsOneWidget);
  });
}
