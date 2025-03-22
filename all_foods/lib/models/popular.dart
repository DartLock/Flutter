import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Popular {
  String name;
  SvgPicture icon;
  Color boxColor;
  bool active;

  Popular({
    required this.name,
    required this.icon,
    required this.boxColor,
    this.active = false,
  });

  static List<Popular> getPopular() {
    List<Popular> popular = [];
    List<Color> listSequenceColors = [const Color(0xFF9CD6FF), const Color(0xFFE3D5FF)];

    SvgPicture saladIcon = SvgPicture.asset('assets/icons/body/popular/blueberry_pancake.svg');
    SvgPicture cakeIcon = SvgPicture.asset('assets/icons/body/popular/lowfat_milk.svg');
    SvgPicture pieIcon = SvgPicture.asset('assets/icons/body/popular/salmon_nigiri.svg');

    Popular saladPopular = Popular(name: 'Salad', icon: saladIcon, boxColor: listSequenceColors[0],);
    Popular cakePopular = Popular(name: 'Cake', icon: cakeIcon, boxColor: listSequenceColors[1],);
    Popular piePopular = Popular(name: 'Pie', icon: pieIcon, boxColor: listSequenceColors[0],);

    popular.add(saladPopular);
    popular.add(cakePopular);
    popular.add(piePopular);

    return popular;
  }
}