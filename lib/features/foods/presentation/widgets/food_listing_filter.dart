import 'package:flutter/material.dart';
import 'package:food_recipe/features/foods/presentation/controllers/food_listing_controller.dart';
import 'package:get/get.dart';

class FoodListingFilter extends StatelessWidget {
  const FoodListingFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final flc = Get.put(FoodListingController());

    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(right: 15),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.orange,
                  ),
                  borderRadius: BorderRadius.circular(6)),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search Recipe ...",
                  hintStyle: TextStyle(color: Colors.orange),
                ),
                controller: flc.searchKeyword.value,
                onChanged: (value) {
                  flc.onChangeSearchKeyword(value);
                },
              ),
            ),
          ),
          SizedBox(
            height: 50,
            width: 60,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.orange,
                ),
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
              ),
              child: const Icon(
                Icons.menu,
                color: Colors.orange,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
