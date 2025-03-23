import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:all_foods/models/category.dart';

Column category() {
  List<Container> categories = Category.getCategories();
  Color colorBlack = Colors.black;

  Padding categoryTitle = Padding( // Category Title
    padding: const EdgeInsets.only(top: 40, left: 20,),
    child: Text(
      'Category',
      style: TextStyle(
        color: colorBlack,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    ),
  );

  return Column( // Category
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      categoryTitle,
      const SizedBox(height: 15,),
      SizedBox( // Category Main Row
        height: 120,
        // color: Colors.green,
        child: ListView.separated(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          separatorBuilder: (context, index) => const SizedBox(width: 25,),
          itemBuilder: (context, index) { // Category Item Boxes
            return categories[index];
          },
        ),
      ),
    ],
  );
}