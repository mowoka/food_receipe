import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.name,
    required this.onTap,
  });

  final String name;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 10),
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
