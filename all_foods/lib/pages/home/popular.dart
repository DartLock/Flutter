import 'package:flutter/material.dart';
import 'package:all_foods/models/popular.dart';

Column popular() {
  List<Popular> popular = Popular.getPopular();
  Color colorBlack = Colors.black;
  Color colorWhite = Colors.white;

  Padding popularTitle = Padding( // Popular Title
    padding: const EdgeInsets.only(top: 40, left: 20,),
    child: Text('Popular', style: TextStyle(color: colorBlack, fontSize: 18, fontWeight: FontWeight.w600,),),
  );

  return Column( // Popular
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      popularTitle,
      const SizedBox(height: 15,),
      SizedBox( // Popular Main Row
        height: 120,
        // color: Colors.green,
        child: ListView.separated(
          itemCount: popular.length,
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.only(left: 20, right: 20,),
          separatorBuilder: (context, index) => const SizedBox(width: 25,),
          itemBuilder: (context, index) { // Popular Item Boxes
            return Container( // Popular Item Box
              // width: 100,
              decoration: BoxDecoration(
                color: popular[index].boxColor.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column( // Popular Child Sub Items
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container( // Popular Child Sub Item
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(color: colorWhite, shape: BoxShape.circle,), // Icon border style
                    child: Padding(padding: const EdgeInsets.all(8.0), child: popular[index].icon,), // Icon imaging
                  ),
                  Text( // Popular Child Sub Item Title
                    textAlign: TextAlign.center,
                    popular[index].title,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: colorBlack,
                      fontSize: 14,
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