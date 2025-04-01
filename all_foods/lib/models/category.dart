import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Category {
  String title;
  SvgPicture icon;
  Color boxColor;

  Category({
    required this.title,
    required this.icon,
    required this.boxColor,
  });

  static List<Map<String, String>> _categoriesData() {
    return [
      {"key": 'salad',       "title": 'Salad',       "asset": 'assets/icons/body/categories/salad.svg'},
      {"key": 'oatmeal',     "title": 'Oatmeal',     "asset": 'assets/icons/body/categories/oatmeal.svg'},
      {"key": 'canai_bread', "title": 'Canai Bread', "asset": 'assets/icons/body/categories/canai_bread.svg'},
      {"key": 'pie',         "title": 'Pie',         "asset": 'assets/icons/body/categories/pie.svg'},
      {"key": 'pancake',     "title": 'Pancake',     "asset": 'assets/icons/body/categories/pancake.svg'},
      {"key": 'smoothie',    "title": 'Smoothie',    "asset": 'assets/icons/body/categories/smoothie.svg'},
      {"key": 'smoothie',    "title": 'Smoothie',    "asset": 'assets/icons/body/categories/smoothie.svg'},
      {"key": 'smoothie',    "title": 'Smoothie',    "asset": 'assets/icons/body/categories/smoothie.svg'},
      {"key": 'smoothie',    "title": 'Smoothie',    "asset": 'assets/icons/body/categories/smoothie.svg'},
    ];
  }

  static Map getCategoryByKey(String key) {
    List<Map<String, String>> categoriesData = _categoriesData();

    return categoriesData.firstWhere((element) => element["key"] == key);
  }

  // TODO: этот код повторяется поэтому он может быть Родительским
  static List<Container> getCategories() {
    List<Container> categories = [];
    List<Color> listSequenceColors = [const Color(0xFF9CD6FF), const Color(0xFFE3D5FF)];

    List categoriesData = _categoriesData();

    for (final (index, categoryDataElement) in categoriesData.indexed) {
      SvgPicture icon = SvgPicture.asset(categoryDataElement["asset"]);
      int colorIndex = index % 2;

      // TODO: эту часть кода можно попробовать передавать уже готовой.
      //   что бы сделать его одинаковым полностью, под интерфейс
      Category categoryElement = Category(title: categoryDataElement["title"], icon: icon, boxColor: listSequenceColors[colorIndex],);

      Container categoryContainer = _buildContainer(categoryElement);

      categories.add(categoryContainer);
    }

    return categories;
  }

  // TODO: этот код повторяется но не сильно, поэтому он может быть резализованным от Интерфейсна
  static _buildContainer(categoryElement) {
    Color colorWhite = Colors.white;

    return Container( // Category Item Box
      width: 100,
      decoration: BoxDecoration(
        color: categoryElement.boxColor.withValues(alpha: 0.3),
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
              child: categoryElement.icon,
            ),
          ),
          Text( // Category Child Sub Item Title
            textAlign: TextAlign.center,
            categoryElement.title,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}