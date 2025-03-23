import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:all_foods/pages/app_bar.dart';
import 'package:all_foods/pages/home/search_bar.dart';
import 'package:all_foods/pages/home/category.dart';
import 'package:all_foods/pages/home/recommendations.dart';
import 'package:all_foods/pages/home/popular.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          searchBar(),
          // const SizedBox(height: 40,),
          category(),
          recommendations(),
          popular(),
        ],
      ),
    );
  }
}
