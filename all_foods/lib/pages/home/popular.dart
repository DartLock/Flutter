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
      SizedBox(
        height: 200,
        child: ListView.separated(
          itemCount: popular.length,
          shrinkWrap: true,
          separatorBuilder: (context, index) => const SizedBox(height: 25,),
          padding: const EdgeInsets.only(left: 20, right: 20,),
          itemBuilder: (context, index) { // Popular Item Boxes
            return popular[index];
          },
        ),
      ),

    ],
  );
}