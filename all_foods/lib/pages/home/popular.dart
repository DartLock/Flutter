import 'package:flutter/material.dart';
import 'package:all_foods/models/popular.dart';

Column popular() {
  List<Container> popular = Popular.getPopular();
  Color colorBlack = Colors.black;

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
        child: ListView.separated(
          padding: const EdgeInsets.only(left: 20, right: 20,),
          itemCount: popular.length,
          scrollDirection: Axis.vertical,
          separatorBuilder: (context, index) => const SizedBox(width: 25,),
          itemBuilder: (context, index) { // Popular Item Boxes
            return popular[index];
          },
        ),
      ),
    ],
  );
}