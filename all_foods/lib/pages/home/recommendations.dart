import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:all_foods/models/recommendation.dart';

Column recommendations() {
  List<Recommendation> recommendation = Recommendation.getRecommendation();

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
      Container( // Category Main Row
        height: 220,
        // color: Colors.green,
        child: ListView.separated(
          itemCount: recommendation.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          separatorBuilder: (context, index) => const SizedBox(width: 25,),
          itemBuilder: (context, index) { // Category Item Boxes
            return Container( // Category Item Box
              width: 100,
              decoration: BoxDecoration(
                color: recommendation[index].boxColor.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column( // Category Child Sub Items
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container( // Category Child Sub Item
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(recommendation[index].iconPath),
                    ),
                  ),
                  Text( // Category Child Sub Item Title
                    textAlign: TextAlign.center,
                    recommendation[index].title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    ],
  );
}