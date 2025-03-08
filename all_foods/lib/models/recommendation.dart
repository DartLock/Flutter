import 'package:flutter/material.dart';

class Recommendation {
  String title;
  String iconPath;
  String level;
  String duration;
  String colorie;
  Color boxColor;
  bool isSelected;

  Recommendation({
    required this.title,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.colorie,
    required this.isSelected,
    required this.boxColor,
  });

  static List<Recommendation> getRecommendation() {
    List<Recommendation> recommendations = [];

    recommendations.add(
        Recommendation(
          title: 'Honey Pancake',
          iconPath: 'assets/icons/body/recommendations/honey_pancake.svg',
          level: 'Easy',
          duration: '30mins',
          colorie: '180kCal',
          isSelected: true,
          boxColor: const Color(0xFF9CD6FF),
        )
    );

    recommendations.add(
        Recommendation(
          title: 'Canai Bread',
          iconPath: 'assets/icons/body/recommendations/canai_bread.svg',
          level: 'Easy',
          duration: '30mins',
          colorie: '180kCal',
          isSelected: true,
          boxColor: const Color(0xFFE3D5FF),
        )
    );

    return recommendations;
  }
}
