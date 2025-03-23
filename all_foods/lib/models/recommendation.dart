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

  // TODO: этот код повторяется поэтому он может быть Родительским
  static List<Container> getRecommendation() {
    List<Container> recommendations = [];
    List<Color> listSequenceColors = [const Color(0xFF9CD6FF), const Color(0xFFE3D5FF)];

    TextStyle titleStyle = const TextStyle(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 16,);
    TextStyle infoStyle = const TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF959595), fontSize: 13,);

    List recommendationsData = _recommendationsData();

    for (final (index, recommendationDataElement) in recommendationsData.indexed) {
      SvgPicture icon = SvgPicture.asset(recommendationDataElement["asset"]);
      Text title = Text(textAlign: TextAlign.center, recommendationDataElement["title"], style: titleStyle,);
      Text info = Text(textAlign: TextAlign.center, recommendationDataElement["info"], style: infoStyle,);

      int colorIndex = index % 2;

      // TODO: эту часть кода передават уже готовой.
      Recommendation recommendationElement = Recommendation(
        title: title,
        icon: icon,
        info: info,
        isSelected: true,
        boxColor: listSequenceColors[colorIndex],
      );

      Container recommendationContainer = _buildContainer(recommendationElement);

      recommendations.add(recommendationContainer);
    }

    return recommendations;
  }

  // TODO: этот код повторяется но не сильно, поэтому он может быть резализованным от Интерфейсна
  static Container _buildContainer(recommendation) {
    return Container( // Category Item Box
      width: 210,
      decoration: BoxDecoration(
        color: recommendation.boxColor.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column( // Category Child Sub Items
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          recommendation.icon,
          Column(children: [recommendation.title, recommendation.info,],),
          _buttonView(recommendation, recommendation.isSelected),
        ],
      ),
    );
  }

  static Container _buttonView(recommendation, isSelected) {
    return Container( // Button View
      height: 45,
      width: 130,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            isSelected ? const Color(0xFF9DCEFF) : Colors.transparent,
            isSelected ? const Color(0xFF92A3FD) : Colors.transparent,
          ],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(
          textAlign: TextAlign.center,
          'View',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: isSelected ? const Color(0xFFCEE9FF) : Colors.transparent,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
