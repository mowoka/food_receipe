import 'package:flutter/material.dart';
import 'package:food_recipe/core/config/route_name.dart';
import 'package:food_recipe/core/presentation/widgets/food_inkwell.dart';
import 'package:food_recipe/core/utils/food_snackbar.dart';
import 'package:food_recipe/features/onboard/presentation/controllers/register_controller.dart';
import 'package:get/get.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          margin: const EdgeInsets.only(top: 100),
          width: MediaQuery.of(context).size.width,
          height: 400,
          color: Colors.orangeAccent,
          child: GetBuilder(
            init: RegisterController(),
            builder: (controller) {
              return Column(
                children: [
                  const Text(
                    "Let's get started! \n What should I know you by?",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                    controller: controller.nameController.value,
                  ),
                  const SizedBox(height: 50),
                  FoodInkWell(
                    onTap: () {
                      final name = controller.nameController.value.text;
                      if (name.isEmpty) {
                        showSnackbar(
                          title: "Alert",
                          message: "Name is empty",
                          status: SnackStatus.warning,
                        );
                        return;
                      }
                      controller.registerUser(name: name);
                      Get.offNamed(RouteName.foodHome);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
