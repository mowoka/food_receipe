import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe/features/splash/presentation/controllers/splash_controller.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
        init: SplashController(),
        builder: (_) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.orangeAccent,
            child: Center(
              child: AnimatedTextKit(
                pause: const Duration(seconds: 2),
                isRepeatingAnimation: true,
                repeatForever: true,
                animatedTexts: [
                  TyperAnimatedText(
                    'Hello\nRecipe',
                    textAlign: TextAlign.center,
                    textStyle: const TextStyle(
                      fontSize: 80,
                      fontFamily: 'Playball',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
