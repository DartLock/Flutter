import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:all_foods/models/category.dart';

Column category() {
  List<Category> categories = Category.getCategories();
  Color colorBlack = Colors.black;
  Color colorWhite = Colors.white;

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
            return Container( // Category Item Box
              width: 100,
              decoration: BoxDecoration(
                color: categories[index].boxColor.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column( // Category Child Sub Items
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container( // Category Child Sub Item
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: colorWhite,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: categories[index].icon,
                    ),
                  ),
                  Text( // Category Child Sub Item Title
                    textAlign: TextAlign.center,
                    categories[index].title,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: colorBlack,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    ],
  );
}