import 'package:flutter/material.dart';
import 'package:food_recipe/core/presentation/widgets/food_inkwell.dart';
import 'package:get/route_manager.dart';

class FoodDetailLeftPanel extends StatelessWidget {
  const FoodDetailLeftPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 70),
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FoodDetailButton(
            onTap: () {
              Get.back();
            },
            showBoxShadow: false,
            icon: Icons.arrow_back,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                FoodDetailButton(
                  onTap: () {},
                  showBoxShadow: true,
                  icon: Icons.book_outlined,
                ),
                const SizedBox(height: 40),
                FoodDetailButton(
                  onTap: () {},
                  showBoxShadow: true,
                  icon: Icons.edit_document,
                ),
                const SizedBox(height: 40),
                FoodDetailButton(
                  onTap: () {},
                  showBoxShadow: true,
                  icon: Icons.favorite_sharp,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FoodDetailButton extends StatelessWidget {
  const FoodDetailButton({
    super.key,
    required this.showBoxShadow,
    required this.onTap,
    required this.icon,
    this.color = Colors.black,
  });

  final bool showBoxShadow;
  final Function() onTap;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return FoodInkWell(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(100)),
            color: Colors.white,
            boxShadow: [
              if (showBoxShadow)
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 0,
                  blurRadius: 6,
                  offset: const Offset(0, 0.2),
                ),
            ]),
        child: Icon(
          icon,
          color: color,
        ),
      ),
    );
  }
}
