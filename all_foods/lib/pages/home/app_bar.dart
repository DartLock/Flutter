import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarMenuBox extends Container {
  late String icon;

  AppBarMenuBox({super.key, decoration, icon}) : super(
    constraints: const BoxConstraints(maxWidth: 25, maxHeight: 25),
    alignment: Alignment.center,
    child: SvgPicture.asset(icon, height: 25, width: 25,),
  );
}

AppBar appBar() {
  BoxDecoration decoration = BoxDecoration(
    color: const Color(0xFFC6C6C6),
    borderRadius: BorderRadius.circular(10),
    boxShadow: const [
      BoxShadow(
        color: Color(0xC2CCCCCC),
        offset: Offset(0, 1),
        blurRadius: 1,
        spreadRadius: 1,
        blurStyle: BlurStyle.normal,
      ),
    ],
  );

  Container appBarArrowLeft = Container(
    margin: const EdgeInsets.all(0),
    alignment: Alignment.center,
    child: AppBarMenuBox(decoration: decoration, icon: "assets/icons/app_bar/arrow_left.svg",),
  );
  Container appBarDotMenu = Container(
    margin: const EdgeInsets.all(10),
    alignment: Alignment.center,
    width: 37,
    child: AppBarMenuBox(icon: "assets/icons/app_bar/dots_menu.svg",),
  );

  return AppBar(
      title: const Text(
        'Breakfast',
        style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      backgroundColor: const Color(0xffffffff),
      elevation: 0.1,
      shadowColor: const Color(0xFFC1C1C1),
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {

        },
        child: appBarArrowLeft,
      ),
      actions: [
        GestureDetector(
          onTap: () {

          },
          child: appBarDotMenu,
        ),
      ]
  );
}