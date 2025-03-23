import 'package:flutter/material.dart';
import 'package:all_foods/models/recommendation.dart';

Column recommendations() {
  List<Container> recommendations = Recommendation.getRecommendation();
  Color colorBlack = Colors.black;

  Padding recommendationsTitle = Padding( // Category Title
    padding: const EdgeInsets.only(top: 40, left: 20,),
    child: Text('Recommendations', style: TextStyle(color: colorBlack, fontSize: 18, fontWeight: FontWeight.w600,),),
  );

  return Column( // Category
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      recommendationsTitle,
      const SizedBox(height: 15,),
      SizedBox( // Category Main Row
        height: 240,
        child: ListView.separated(
          padding: const EdgeInsets.only(left: 20, right: 20,),
          itemCount: recommendations.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => const SizedBox(width: 25,),
          itemBuilder: (context, index) { // Category Item Boxes
            return recommendations[index];
          },
        ),
      ),
    ],
  );
}