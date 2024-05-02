import 'package:flutter/material.dart';
import 'package:food_recipe/core/config/page_route.dart';
import 'package:food_recipe/features/foods/presentation/routes/food_listing.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Recipe App',
      home: const FoodListing(),
      getPages: AppPage.pages,
    );
  }
}
