import 'package:flutter/material.dart';

class SearchContent extends StatelessWidget {
  const SearchContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 50),
      height: 200,
      decoration: const BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      alignment: Alignment.bottomCenter,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: const Text(
              'Hello, Recipe',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(0.0, 50),
            child: Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 5,
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(right: 10),
                        isDense: true,
                        hintText: 'Search here',
                        border: InputBorder.none,
                        counterText: "",
                      ),
                      maxLength: 30,
                    ),
                  ),
                  const Icon(
                    Icons.search,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
