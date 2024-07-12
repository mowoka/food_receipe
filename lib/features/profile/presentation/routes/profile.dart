import 'package:flutter/material.dart';
import 'package:food_recipe/core/config/route_name.dart';
import 'package:food_recipe/features/profile/presentation/controllers/profile_controller.dart';
import 'package:food_recipe/features/profile/presentation/widgets/profile_header.dart';
import 'package:food_recipe/features/profile/presentation/widgets/profile_menu.dart';
import 'package:get/get.dart';

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
    return GetBuilder(
        init: ProfileController(),
        builder: (controller) {
          final name = controller.user.value.name;
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileHeader(
                name: name,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                    ProfileMenu(
                      title: 'Hapus Akun',
                      asset: 'assets/icons/user.png',
                      onTap: () {
                        controller.deteleUser();
                        Get.toNamed(
                          RouteName.welcome,
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          );
        });
  }
}
