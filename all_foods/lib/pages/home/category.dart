import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:all_foods/models/category.dart';

Column category() {
  List<Category> categories = Category.getCategories();

  return Column( // Category
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Padding( // Category Title
        padding: EdgeInsets.only(top: 40, left: 20,),
        child: Text(
          'Category',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const SizedBox(height: 15,),
      Container( // Category Main Row
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
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(categories[index].iconPath),
                    ),
                  ),
                  Text( // Category Child Sub Item Title
                    textAlign: TextAlign.center,
                    categories[index].name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
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