import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Recommendation {
  Text title;
  SvgPicture icon;
  Text info;
  Color boxColor;
  bool isSelected;

  Recommendation({
    required this.title,
    required this.icon,
    required this.info,
    required this.isSelected,
    required this.boxColor,
  });

  static List<Recommendation> getRecommendation() {
    List<Recommendation> recommendations = [];
    List<Color> listSequenceColors = [const Color(0xFF9CD6FF), const Color(0xFFE3D5FF)];

    SvgPicture honeyPancakeIcon = SvgPicture.asset('assets/icons/body/recommendations/honey_pancake.svg');
    SvgPicture canaiBreadIcon = SvgPicture.asset('assets/icons/body/recommendations/canai_bread.svg');
    SvgPicture fruitCakeIcon = SvgPicture.asset('assets/icons/body/recommendations/fruit_cake.svg');

    TextStyle titleStyle = const TextStyle(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 16,);
    TextStyle infoStyle = const TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF959595), fontSize: 13,);

    Text honeyPancakeTitle = Text(textAlign: TextAlign.center, 'Honey Pancake', style: titleStyle,);
    Text canaiBreadTitle = Text(textAlign: TextAlign.center, 'Canai Bread', style: titleStyle,);
    Text fruitCakeTitle = Text(textAlign: TextAlign.center, 'Fruit Cake', style: titleStyle,);

    Text honeyPancakeInfo = Text(textAlign: TextAlign.center, "Easy | 30mins | 180kCal", style: infoStyle,);
    Text canaiBreadInfo = Text(textAlign: TextAlign.center, "Easy | 30mins | 180kCal", style: infoStyle,);
    Text fruitCakeInfo = Text(textAlign: TextAlign.center, "Easy | 30mins | 180kCal", style: infoStyle,);

    Recommendation honeyPancakeRec = Recommendation(
      title: honeyPancakeTitle,
      icon: honeyPancakeIcon,
      info: honeyPancakeInfo,
      isSelected: true,
      boxColor: listSequenceColors[0],
    );

    Recommendation canaiBreadRec = Recommendation(
      title: canaiBreadTitle,
      icon: canaiBreadIcon,
      info: canaiBreadInfo,
      isSelected: true,
      boxColor: listSequenceColors[1],
    );

    Recommendation fruitCakeRec = Recommendation(
      title: fruitCakeTitle,
      icon: fruitCakeIcon,
      info: fruitCakeInfo,
      isSelected: true,
      boxColor: listSequenceColors[0],
    );

    recommendations.add(honeyPancakeRec);
    recommendations.add(canaiBreadRec);
    recommendations.add(fruitCakeRec);

    return recommendations;
  }
}
