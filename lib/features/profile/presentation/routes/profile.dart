import 'package:flutter/material.dart';
import 'package:food_recipe/features/profile/presentation/widgets/profile_header.dart';
import 'package:food_recipe/features/profile/presentation/widgets/profile_menu.dart';

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
                title: 'Recipe Wikipedia',
                asset: 'assets/icons/recipe-book.png',
                onTap: () => {},
              ),
              ProfileMenu(
                title: 'Ingredients Wikipedia',
                asset: 'assets/icons/vegetable.png',
                onTap: () => {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
