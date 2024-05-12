import 'package:flutter/material.dart';

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({
    super.key,
    required this.name,
    required this.author,
  });

  final String name;
  final String author;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          SizedBox(
            child: Row(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.orangeAccent.shade400,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  'by $author',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black45,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 6),
          const Divider(color: Colors.orangeAccent),
        ],
      ),
    );
  }
}
