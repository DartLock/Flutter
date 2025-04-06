import 'package:flutter/material.dart';
import 'package:all_foods/pages/app_bar.dart';
import 'package:all_foods/pages/home/search_bar.dart';
import 'package:all_foods/pages/home/category.dart';
import 'package:all_foods/pages/home/recommendations.dart';
import 'package:all_foods/pages/home/popular.dart';

class HomePage extends StatelessWidget {
  late ListView bodyListView;

  HomePage({super.key}) {
    bodyListView = ListView(
      children: [
        searchBar(),
        category(),
        recommendations(),
        popular(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: bodyListView,
    );
  }
}
