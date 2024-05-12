import 'package:flutter/material.dart';
import 'package:food_recipe/core/config/bottom_nav_widget_options.dart';
import 'package:food_recipe/core/presentation/controllers/bottom_route_controller.dart';
import 'package:get/get.dart';

class FoodScaffold extends StatelessWidget {
  const FoodScaffold({
    super.key,
    required this.body,
    this.appbar,
  });

  final AppBar? appbar;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    final brc = Get.put(BottomRouteController());

    return Scaffold(
      appBar: appbar,
      body: Obx(() => BottomNavigationWidget.widgetOptions[brc.tabIndex.value]),
      bottomNavigationBar: Obx(
        () => SizedBox(
          height: 100,
          child: BottomNavigationBar(
            showUnselectedLabels: false,
            showSelectedLabels: false,
            currentIndex: brc.tabIndex.value,
            onTap: (index) {
              brc.changeTabIndex(index);
            },
            selectedItemColor: Colors.orangeAccent,
            unselectedItemColor: Colors.grey.shade400,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.food_bank_outlined,
                  size: 30,
                ),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_outline,
                  size: 30,
                ),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  size: 30,
                ),
                label: 'Person',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
