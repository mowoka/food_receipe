import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:food_recipe/core/config/page_route.dart';
import 'package:food_recipe/core/config/storage_keys.dart';
import 'package:food_recipe/core/data/models/user_model.dart';
import 'package:food_recipe/core/domain/entities/storage_user.dart';
import 'package:food_recipe/core/domain/entities/user.dart';
import 'package:food_recipe/features/splash/domain/usecases/storage_get_user.dart';
import 'package:food_recipe/features/splash/presentation/controllers/splash_controller.dart';
import 'package:food_recipe/features/splash/presentation/routes/splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'splash_screen_test.mocks.dart';

GetMaterialApp createSplashScreen() {
  return GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Hello Recipe',
    home: const SplashScreen(),
    getPages: AppPage.pages,
  );
}

@GenerateNiceMocks([MockSpec<StorageUser>()])
@GenerateNiceMocks([MockSpec<StorageGetUser>()])
@GenerateNiceMocks([MockSpec<SplashController>()])
void main() {
  testWidgets('Splash screen testing when user not exist',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(createSplashScreen());

    // Verify that our counter starts at 0.
    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();
    expect(find.text('Welcome'), findsAtLeastNWidgets(1));
  });

  testWidgets('Splash screen testing when user exist',
      (WidgetTester tester) async {
    // init save user
    const user = UserModel(name: 'Mokaz', age: '10');
    expect(user.name, 'Mokaz');
    final data = user.toJson();
    final json = jsonEncode(data);
    GetStorage().write(StorageKeys.storageUser, json);

    await tester.pumpWidget(createSplashScreen());
    final mockStorageUser = MockStorageUser();
    final mockStorageGetUser = MockStorageGetUser();
    final mockSplashController = MockSplashController();
    when(mockStorageUser.get()).thenReturn(
      User()
        ..name = "Mokaz"
        ..age = '10',
    );
    when(mockStorageGetUser.execute()).thenReturn(
      User()
        ..name = "Mokaz"
        ..age = '10',
    );
    mockSplashController.onLoad(mockStorageGetUser.execute());

    await tester.pumpAndSettle();
    expect(find.text('Hello\nRecipe'), findsAtLeastNWidgets(1));
    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();
    expect(mockStorageUser.get().name, "Mokaz");
    expect(mockStorageGetUser.execute().name, "Mokaz");
    // expect(find.text('Welcome'), findsAtLeastNWidgets(1));
    expect(find.text('Hello, Recipe'), findsAtLeastNWidgets(1));

    // remove storage data after testing
    GetStorage().remove(StorageKeys.storageUser);
  });
}
