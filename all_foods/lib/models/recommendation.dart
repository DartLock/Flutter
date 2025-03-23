import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Recommendation {
  Text title;
  SvgPicture icon;
  Text info;
  Color boxColor;
  bool isSelected;

  Recommendation({
    required this.title,
    required this.icon,
    required this.info,
    required this.isSelected,
    required this.boxColor,
  });

  static List<Map<String, String>> _recommendationsData() {
    return [
      {
        "key": 'honey_pancake',
        "title": 'Honey Pancake',
        "info": "Easy | 30mins | 180kCal",
        "asset": 'assets/icons/body/recommendations/honey_pancake.svg'
      },
      {
        "key": 'canai_bread',
        "title": 'Canai Bread',
        "info": "Easy | 30mins | 180kCal",
        "asset": 'assets/icons/body/recommendations/canai_bread.svg'
      },
      {
        "key": 'fruit_cake',
        "title": 'Fruit Cake',
        "info": "Easy | 30mins | 180kCal",
        "asset": 'assets/icons/body/recommendations/fruit_cake.svg'
      },
    ];
  }

  static List<Recommendation> getRecommendation() {
    List<Recommendation> recommendations = [];
    List<Color> listSequenceColors = [const Color(0xFF9CD6FF), const Color(0xFFE3D5FF)];

    TextStyle titleStyle = const TextStyle(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 16,);
    TextStyle infoStyle = const TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF959595), fontSize: 13,);

    List recommendationsData = _recommendationsData();

    for (final (index, recommendationElement) in recommendationsData.indexed) {
      SvgPicture icon = SvgPicture.asset(recommendationElement["asset"]);
      Text title = Text(textAlign: TextAlign.center, recommendationElement["title"], style: titleStyle,);
      Text info = Text(textAlign: TextAlign.center, recommendationElement["info"], style: infoStyle,);

      int colorIndex = index % 2;

      Recommendation recommendation = Recommendation(
        title: title,
        icon: icon,
        info: info,
        isSelected: true,
        boxColor: listSequenceColors[colorIndex],
      );

      recommendations.add(recommendation);
    }

    return recommendations;
  }
}
