import 'package:flutter_test/flutter_test.dart';

import 'package:food_recipe/main.dart';

void main() {
  testWidgets('Splash screen testing', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    await tester.pump(const Duration(seconds: 2));
  });
}
