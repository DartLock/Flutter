import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Popular {
  String name;
  SvgPicture icon;
  Color boxColor;
  bool active;

  Popular({required this.name, required this.icon, required this.boxColor, this.active = false,});

  static List<Map<String, String>> _popularData() {
    return [
      {"key": 'blueberry_pancake', "name": 'Blueberry Pancake', "asset": 'assets/icons/body/popular/blueberry_pancake.svg'},
      {"key": 'lowfat_milk', "name": 'Lowfat Milk', "asset": 'assets/icons/body/popular/lowfat_milk.svg'},
      {"key": 'salmon_nigiri', "name": 'Salmon Nigiri', "asset": 'assets/icons/body/popular/salmon_nigiri.svg'},
      {"key": 'salad', "name": 'Salad', "asset": 'assets/icons/body/popular/salad.svg'},
    ];
  }

  static Map getPopularByKey(String key) {
    List<Map<String, String>> popularData = _popularData();

    return popularData.firstWhere((element) => element["key"] == key);
  }

  static List<Popular> getPopular() {
    List<Popular> popular = [];
    List<Color> listSequenceColors = [const Color(0xFF9CD6FF), const Color(0xFFE3D5FF)];

    List popularData = _popularData();

    for (final (index, popularElement) in popularData.indexed) {
      SvgPicture icon = SvgPicture.asset(popularElement["asset"]);
      int colorIndex = index % 2;
      popular.add(Popular(name: popularElement["name"], icon: icon, boxColor: listSequenceColors[colorIndex],));
    }

    return popular;
  }
}