import 'package:flutter/material.dart';
import 'package:food_recipe/core/presentation/widgets/food_inkwell.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    required this.title,
    required this.asset,
    required this.onTap,
  });

  final String title;
  final String asset;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return FoodInkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            ImageIcon(
              AssetImage(asset),
            ),
            const SizedBox(width: 14),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
