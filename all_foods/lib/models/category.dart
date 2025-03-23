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
    List<Color> listSequenceColors = [const Color(0xFF9CD6FF), const Color(0xFFE3D5FF)];

    SvgPicture saladIcon = SvgPicture.asset('assets/icons/body/categories/salad.svg');
    SvgPicture oatmealIcon = SvgPicture.asset('assets/icons/body/categories/oatmeal.svg');
    SvgPicture canaiBreadIcon = SvgPicture.asset('assets/icons/body/categories/canai_bread.svg');
    SvgPicture pieIcon = SvgPicture.asset('assets/icons/body/categories/pie.svg');
    SvgPicture pancakeIcon = SvgPicture.asset('assets/icons/body/categories/pancake.svg');
    SvgPicture smoothieIcon = SvgPicture.asset('assets/icons/body/categories/smoothie.svg');

    Category saladCategory = Category(name: 'Salad', icon: saladIcon, boxColor: listSequenceColors[0],);
    Category oatmealCategory = Category(name: 'Cake', icon: oatmealIcon, boxColor: listSequenceColors[1],);
    Category canaiBreadCategory = Category(name: 'Cake', icon: canaiBreadIcon, boxColor: listSequenceColors[0],);
    Category pieCategory = Category(name: 'Pie', icon: pieIcon, boxColor: listSequenceColors[1],);
    Category pancakeCategory = Category(name: 'Pancake', icon: pancakeIcon, boxColor: listSequenceColors[0],);
    Category smoothieCategory = Category(name: 'Smoothie', icon: smoothieIcon, boxColor: listSequenceColors[1],);

    categories.add(saladCategory);
    categories.add(oatmealCategory);
    categories.add(canaiBreadCategory);
    categories.add(pieCategory);
    categories.add(pancakeCategory);
    categories.add(smoothieCategory);

    return categories;
  }
}