import 'package:flutter/material.dart';
import 'package:food_recipe/core/presentation/widgets/food_expansion_tile.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.name,
    required this.description,
    this.expandedChild,
  });

  final String name;
  final String description;
  final Widget? expandedChild;

  @override
  Widget build(BuildContext context) {
    return FoodExpansionTile(
      title: ExpansionHead(
        name: name,
      ),
      children: [
        expandedChild ??
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(description),
            )
      ],
    );
  }
}

class ExpansionHead extends StatelessWidget {
  const ExpansionHead({super.key, required this.name});

  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 6),
            child: Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.deepOrangeAccent,
              ),
            ),
          ),
          const Divider(
            color: Colors.orangeAccent,
          )
        ],
      ),
    );
  }
}
