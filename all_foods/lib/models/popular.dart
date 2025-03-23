import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Popular {
  String title;
  SvgPicture icon;
  Color boxColor;
  bool active;

  Popular({required this.title, required this.icon, required this.boxColor, this.active = false,});

  static List<Map<String, String>> _popularData() {
    return [
      {"key": 'blueberry_pancake', "title": 'Blueberry Pancake', "asset": 'assets/icons/body/popular/blueberry_pancake.svg'},
      {"key": 'lowfat_milk',       "title": 'Lowfat Milk',       "asset": 'assets/icons/body/popular/lowfat_milk.svg'},
      {"key": 'salmon_nigiri',     "title": 'Salmon Nigiri',     "asset": 'assets/icons/body/popular/salmon_nigiri.svg'},
      {"key": 'salad',             "title": 'Salad',             "asset": 'assets/icons/body/popular/salad.svg'},
    ];
  }

  static Map getPopularByKey(String key) {
    List<Map<String, String>> popularData = _popularData();

    return popularData.firstWhere((element) => element["key"] == key);
  }

  static List<Container> getPopular() {
    List<Container> popular = [];
    List<Color> listSequenceColors = [const Color(0xFF9CD6FF), const Color(0xFFE3D5FF)];

    List popularData = _popularData();

    for (final (index, popularDataElement) in popularData.indexed) {
      SvgPicture icon = SvgPicture.asset(popularDataElement["asset"]);
      int colorIndex = index % 2;

      Popular popularElement = Popular(title: popularDataElement["title"], icon: icon, boxColor: listSequenceColors[colorIndex],);
      Container popularContainer = _buildContainer(popularElement);

      popular.add(popularContainer);
    }

    return popular;
  }

  static _buildContainer(popularElement) {
    return Container( // Popular Item Box
      // width: 100,
      decoration: BoxDecoration(
        color: popularElement.boxColor.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column( // Popular Child Sub Items
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container( // Popular Child Sub Item
            width: 50,
            height: 50,
            decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle,), // Icon border style
            child: Padding(padding: const EdgeInsets.all(8.0), child: popularElement.icon,), // Icon imaging
          ),
          Text( // Popular Child Sub Item Title
            textAlign: TextAlign.center,
            popularElement.title,
            style: const TextStyle(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
