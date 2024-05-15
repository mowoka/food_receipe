import 'package:flutter/material.dart';
import 'package:food_recipe/core/config/route_name.dart';
import 'package:food_recipe/features/profile/presentation/widgets/profile_header.dart';
import 'package:food_recipe/features/profile/presentation/widgets/profile_menu.dart';
import 'package:get/route_manager.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfileContent(),
    );
  }
}

class ProfileContent extends StatelessWidget {
  const ProfileContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProfileHeader(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              ProfileMenu(
                title: 'Recipedia',
                asset: 'assets/icons/recipe-book.png',
                onTap: () => {
                  Get.toNamed(RouteName.recipedia),
                },
              ),
              ProfileMenu(
                title: 'Ingredients Wikipedia',
                asset: 'assets/icons/vegetable.png',
                onTap: () => {
                  Get.toNamed(
                    RouteName.ingredientWikipedia,
                  )
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
