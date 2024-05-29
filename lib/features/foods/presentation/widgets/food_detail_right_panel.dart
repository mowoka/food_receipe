import 'package:flutter/material.dart';
import 'package:food_recipe/core/config/testing_config.dart';

class FoodDetailRightPanel extends StatelessWidget {
  const FoodDetailRightPanel({
    super.key,
    required this.imageURL,
  });

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    final testConfig = TestingConfig();
    return Expanded(
      child: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(100),
          bottomLeft: Radius.circular(100),
        )),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(100),
            bottomLeft: Radius.circular(100),
          ),
          child: testConfig.getTesting()
              ? Image.asset(
                  'assets/images/placeholder-silde.png',
                  fit: BoxFit.cover,
                )
              : Image.network(
                  imageURL,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
        ),
      ),
    );
  }
}
