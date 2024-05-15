import 'package:flutter/material.dart';
import 'package:food_recipe/features/profile/presentation/controllers/profile_controller.dart';
import 'package:get/state_manager.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ProfileController(),
      builder: (controller) {
        final name = controller.user.value.name;
        return Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          color: Colors.orangeAccent,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, $name",
                  style: const TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontFamily: 'Playball',
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Let's make food memories, it's a cooking kind of day!",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
