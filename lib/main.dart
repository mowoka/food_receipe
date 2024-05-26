import 'package:flutter/material.dart';
import 'package:food_recipe/core/config/page_route.dart';
import 'package:food_recipe/features/splash/presentation/routes/splash.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Init Library
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello Recipe',
      home: const SplashScreen(),
      getPages: AppPage.pages,
    );
  }
}
