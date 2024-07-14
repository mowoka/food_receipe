import 'package:flutter/material.dart';
import 'package:food_recipe/core/presentation/widgets/app_bar_header.dart';
import 'package:food_recipe/features/profile/presentation/controllers/recipedia_controller.dart';
import 'package:food_recipe/features/profile/presentation/widgets/list_item.dart';
import 'package:get/get.dart';

class RecipediaPage extends StatelessWidget {
  const RecipediaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppBarHeader(title: "Recipedia"),
          GetBuilder(
              init: RecipediaController(),
              builder: (controller) {
                final data = controller.recipediaEntity.value.data;
                final isLoading = controller.isLoading.value;

                if (isLoading) {
                  return const Padding(
                    padding: EdgeInsets.all(20),
                    child: CircularProgressIndicator(
                      color: Colors.orangeAccent,
                    ),
                  );
                }

                return Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          for (final item in data)
                            ListItem(
                              name: item.name,
                              description: item.description,
                            ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
