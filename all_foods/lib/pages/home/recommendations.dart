import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:all_foods/models/recommendation.dart';

Column recommendations() {
  List<Recommendation> recommendation = Recommendation.getRecommendation();

  Container _buttonView(recommendation) {
    return Container( // Button View
      height: 45,
      width: 130,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            recommendation.isSelected ? Color(0xFF9DCEFF) : Colors.transparent,
            recommendation.isSelected ? Color(0xFF92A3FD) : Colors.transparent,
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
            color: recommendation.isSelected ? Color(0xFFCEE9FF) : Colors.transparent,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  return Column( // Category
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Padding( // Category Title
        padding: EdgeInsets.only(top: 40, left: 20,),
        child: Text(
          'Recommendations',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const SizedBox(height: 15,),
      SizedBox( // Category Main Row
        height: 240,
        child: ListView.separated(
          itemBuilder: (context, index) { // Category Item Boxes
            return Container( // Category Item Box
              width: 210,
              decoration: BoxDecoration(
                color: recommendation[index].boxColor.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column( // Category Child Sub Items
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  recommendation[index].icon,
                  Column(
                    children: [
                      recommendation[index].title,
                      recommendation[index].info,
                    ],
                  ),
                  _buttonView(recommendation[index]),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(width: 25,),
          itemCount: recommendation.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
        ),
      ),
    ],
  );
}