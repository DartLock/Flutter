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

  static List<Map<String, String>> _categoriesData() {
    return [
      {"key": 'salad',       "name": 'Salad',       "asset": 'assets/icons/body/categories/salad.svg'},
      {"key": 'oatmeal',     "name": 'Oatmeal',     "asset": 'assets/icons/body/categories/oatmeal.svg'},
      {"key": 'canai_bread', "name": 'Canai Bread', "asset": 'assets/icons/body/categories/canai_bread.svg'},
      {"key": 'pie',         "name": 'Pie',         "asset": 'assets/icons/body/categories/pie.svg'},
      {"key": 'pancake',     "name": 'Pancake',     "asset": 'assets/icons/body/categories/pancake.svg'},
      {"key": 'smoothie',    "name": 'Smoothie',    "asset": 'assets/icons/body/categories/smoothie.svg'},
    ];
  }

  static Map getCategoryByKey(String key) {
    List<Map<String, String>> categoriesData = _categoriesData();

    return categoriesData.firstWhere((element) => element["key"] == key);
  }

  static List<Category> getCategories() {
    List<Category> categories = [];
    List<Color> listSequenceColors = [const Color(0xFF9CD6FF), const Color(0xFFE3D5FF)];

    List categoriesData = _categoriesData();

    for (final (index, categoryElement) in categoriesData.indexed) {
      SvgPicture icon = SvgPicture.asset(categoryElement["asset"]);
      int colorIndex = index % 2;
      categories.add(Category(name: categoryElement["name"], icon: icon, boxColor: listSequenceColors[colorIndex],));
    }

    return categories;
  }
}