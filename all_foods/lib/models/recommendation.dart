import 'package:flutter/material.dart';

class Recommendation {
  String title;
  String info;
  String iconPath;
  Color boxColor;

  Recommendation({
    required this.title,
    required this.info,
    required this.iconPath,
    required this.boxColor,
  });

  static List<Recommendation> getRecommendation() {
    List<Recommendation> recommendations = [];

    recommendations.add(
        Recommendation(
          title: 'Canai Bread',
          info: 'Easy | 20mins | 230kCal',
          iconPath: 'assets/icons/body/recommendations/canai_bread.svg',
          boxColor: const Color(0xFFE3D5FF),
        )
    );

    recommendations.add(
        Recommendation(
          title: 'Honey Pancake',
          info: 'Easy | 30mins | 180kCal',
          iconPath: 'assets/icons/body/recommendations/honey_pancake.svg',
          boxColor: const Color(0xFF9CD6FF),
        )
    );

    return recommendations;
  }
}
