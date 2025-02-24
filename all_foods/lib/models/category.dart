import 'package:flutter/material.dart';

class Category {
  String name;
  String iconPath;
  Color boxColor;

  Category({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<Category> getCategories() {
    List<Category> categories = [];

    categories.add(
      Category(
        name: 'Salad',
        iconPath: 'assets/icons/body/categories/salad.svg',
        boxColor: const Color(0xFF81FD4C),
      )
    );

    categories.add(
      Category(
        name: 'Cake',
        iconPath: 'assets/icons/body/categories/cake.svg',
        boxColor: const Color(0xFFA16732),
      )
    );

    categories.add(
      Category(
        name: 'Pie',
        iconPath: 'assets/icons/body/categories/pie.svg',
        boxColor: const Color(0xFFD6883F),
      )
    );

    categories.add(
      Category(
        name: 'Pancake',
        iconPath: 'assets/icons/body/categories/pancake.svg',
        boxColor: const Color(0xFFFDF59F),
      )
    );

    categories.add(
      Category(
        name: 'Smoothie',
        iconPath: 'assets/icons/body/categories/smoothie.svg',
        boxColor: const Color(0xFF89FFFF),
      )
    );

    return categories;
  }
}