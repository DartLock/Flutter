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

  // TODO: этот код повторяется поэтому он может быть Родительским
  static List<Container> getPopular() {
    List<Container> popular = [];
    List<Color> listSequenceColors = [const Color(0xFF9CD6FF), const Color(0xFFE3D5FF)];

    List popularData = _popularData();

    for (final (index, popularDataElement) in popularData.indexed) {
      SvgPicture icon = SvgPicture.asset(popularDataElement["asset"]);
      int colorIndex = index % 2;

      // TODO: эту часть кода можно попробовать передавать уже готовой.
      //   что бы сделать его одинаковым полностью, под интерфейс
      Popular popularElement = Popular(title: popularDataElement["title"], icon: icon, boxColor: listSequenceColors[colorIndex],);

      Container popularContainer = _buildContainer(popularElement);

      popular.add(popularContainer);
    }

    return popular;
  }

  // TODO: этот код повторяется но не сильно, поэтому он может быть резализованным от Интерфейсна
  static _buildContainer(popularElement) {
    SvgPicture circleArrowRight = SvgPicture.asset('assets/icons/body/popular/circle_arrow_right.svg');

    return Container( // Popular Item Box
      // width: 100,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.only(bottom: 10, top: 10),
      decoration: BoxDecoration(
        color: popularElement.boxColor.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row( // Popular Child Sub Items
        //mainAxisAlignment: MainAxisAlignment.start,
        // TODO: нужно нижнее отобразить как Row внутри которого будут Boxes, то есть горизонтально
        children: [
          Container( // Popular Icon
            margin: const EdgeInsets.only(left: 20),
            width: 50,
            height: 50,
            decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle,), // Icon border style
            child: Padding(padding: const EdgeInsets.all(8.0), child: popularElement.icon,), // Icon imaging
          ),
          Container( // Popular Title
            width: 295,
            child: Text(
              textAlign: TextAlign.center,
              popularElement.title,
              style: const TextStyle(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 14,),
            ),
          ),
          Container( // Popular Arrow Button
            width: 24,
            height: 24,
            decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle,), // Icon border style
            child: circleArrowRight, // Icon imaging
          ),
        ],
      ),
    );
  }
}
