import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Category {
  String name;
  SvgPicture icon;
  Color boxColor;

  Category({
    required this.name,
    required this.icon,
    required this.boxColor,
  });

  static List<Category> getCategories() {
    List<Category> categories = [];

    SvgPicture saladIcon = SvgPicture.asset('assets/icons/body/categories/salad.svg');
    SvgPicture cakeIcon = SvgPicture.asset('assets/icons/body/categories/cake.svg');
    SvgPicture pieIcon = SvgPicture.asset('assets/icons/body/categories/pie.svg');
    SvgPicture pancakeIcon = SvgPicture.asset('assets/icons/body/categories/pancake.svg');
    SvgPicture smoothieIcon = SvgPicture.asset('assets/icons/body/categories/smoothie.svg');

    Color saladColor = const Color(0xFF81FD4C);
    Color cakeColor = const Color(0xFFA16732);
    Color pieColor = const Color(0xFFD6883F);
    Color pancakeColor = const Color(0xFFFDF59F);
    Color smoothieColor = const Color(0xFF89FFFF);

    Category saladCategory = Category(name: 'Salad', icon: saladIcon, boxColor: saladColor,);
    Category cakeCategory = Category(name: 'Cake', icon: cakeIcon, boxColor: cakeColor,);
    Category pieCategory = Category(name: 'Pie', icon: pieIcon, boxColor: pieColor,);
    Category pancakeCategory = Category(name: 'Pancake', icon: pancakeIcon, boxColor: pancakeColor,);
    Category smoothieCategory = Category(name: 'Smoothie', icon: smoothieIcon, boxColor: smoothieColor,);

    categories.add(saladCategory);
    categories.add(cakeCategory);
    categories.add(pieCategory);
    categories.add(pancakeCategory);
    categories.add(smoothieCategory);

    return categories;
  }
}