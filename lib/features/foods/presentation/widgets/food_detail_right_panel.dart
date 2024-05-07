import 'package:flutter/material.dart';

class FoodDetailRightPanel extends StatelessWidget {
  const FoodDetailRightPanel({
    super.key,
    required this.imageURL,
  });

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
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
          child: Image.network(
            imageURL,
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
