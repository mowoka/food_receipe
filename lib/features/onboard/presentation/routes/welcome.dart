import 'package:flutter/material.dart';
import 'package:food_recipe/core/config/route_name.dart';
import 'package:food_recipe/core/presentation/widgets/food_inkwell.dart';
import 'package:get/route_manager.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: const Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Playball',
                    color: Colors.orange,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 30),
                      height: 300,
                      color: Colors.orangeAccent,
                      child: const Text(
                        "Cooking is like love - it's all about the ingredients and the passion you put into it.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 150,
                      ),
                      width: MediaQuery.of(context).size.width * 0.5,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 30),
                      height: 300,
                      color: Colors.red.shade400,
                      child: const Text(
                        "With a little bit of know-how and a whole lot of heart, anyone can create a culinary masterpiece.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              FoodInkWell(
                child: Container(
                  margin: const EdgeInsets.only(top: 30),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                onTap: () {
                  Get.offNamed(RouteName.register);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
