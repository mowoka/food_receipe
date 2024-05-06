import 'package:flutter/material.dart';
import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:food_recipe/core/domain/entities/food.dart';
import 'package:food_recipe/core/presentation/widgets/food_inkwell.dart';

class SectionCarousel extends StatelessWidget {
  const SectionCarousel({
    super.key,
    required this.title,
    required this.onTapButtonMore,
    this.isFood = true,
    this.foodList,
    this.drinkList,
  });

  final String title;
  final Function() onTapButtonMore;
  final List<Food>? foodList;
  final List<Drink>? drinkList;
  final bool isFood;

  @override
  Widget build(BuildContext context) {
    final foods = foodList ?? [];
    final drinks = drinkList ?? [];
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 30,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                FoodInkWell(
                  onTap: onTapButtonMore,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 25,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'More',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          if (isFood) FoodContent(list: foods) else DrinkContent(list: drinks)
        ],
      ),
    );
  }
}

class DrinkContent extends StatelessWidget {
  const DrinkContent({
    super.key,
    required this.list,
  });

  final List<Drink> list;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 180,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 5),
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return Container(
            margin: EdgeInsets.only(
              left: index < 1 ? 30 : 8,
              right: 8,
            ),
            width: 150,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 1,
                    offset: const Offset(0, 2),
                  ),
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ImageContent(imageURL: list[index].image),
                const SizedBox(height: 8),
                TitleContent(title: list[index].name),
                const SizedBox(height: 5),
                AuthorContent(author: list[index].author),
              ],
            ),
          );
        },
      ),
    );
  }
}

class FoodContent extends StatelessWidget {
  const FoodContent({
    super.key,
    required this.list,
  });

  final List<Food> list;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 180,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 5),
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return Container(
            margin: EdgeInsets.only(
              left: index < 1 ? 30 : 8,
              right: 8,
            ),
            width: 150,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 1,
                    offset: const Offset(0, 2),
                  ),
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ImageContent(imageURL: list[index].image),
                const SizedBox(height: 8),
                TitleContent(title: list[index].name),
                const SizedBox(height: 5),
                AuthorContent(author: list[index].author),
              ],
            ),
          );
        },
      ),
    );
  }
}

class AuthorContent extends StatelessWidget {
  const AuthorContent({
    super.key,
    required this.author,
  });

  final String author;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Text(
        author,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.deepOrangeAccent,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}

class TitleContent extends StatelessWidget {
  const TitleContent({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class ImageContent extends StatelessWidget {
  const ImageContent({
    super.key,
    required this.imageURL,
  });

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: Image.network(
          imageURL,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
