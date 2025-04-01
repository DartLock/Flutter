import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Popular {
  String title;
  String info;
  SvgPicture icon;
  GestureDetector iconRightButton;
  Color boxColor;
  bool active;

  Popular({
    required this.title,
    required this.info,
    required this.icon,
    required this.iconRightButton,
    required this.boxColor,
    this.active = false,
  });

  static List<Map<String, String>> _popularData() {
    String iconRightAsset = 'assets/icons/body/popular/circle_arrow_right.svg';

    return [
      {
        "key": 'blueberry_pancake',
        "title": 'Blueberry Pancake',
        "icon_asset": 'assets/icons/body/popular/blueberry_pancake.svg',
        "icon_right_asset": iconRightAsset,
        "info": "Easy | 30mins | 180kCal",
      },
      {
        "key": 'lowfat_milk',
        "title": 'Lowfat Milk',
        "icon_asset": 'assets/icons/body/popular/lowfat_milk.svg',
        "icon_right_asset": iconRightAsset,
        "info": "Easy | 30mins | 180kCal",
      },
      {
        "key": 'salmon_nigiri',
        "title": 'Salmon Nigiri',
        "icon_asset": 'assets/icons/body/popular/salmon_nigiri.svg',
        "icon_right_asset": iconRightAsset,
        "info": "Easy | 30mins | 180kCal",
      },
      {
        "key": 'salad',
        "title": 'Salad',
        "icon_asset": 'assets/icons/body/popular/salad.svg',
        "icon_right_asset": iconRightAsset,
        "info": "Easy | 30mins | 180kCal",
      },
      {
        "key": 'salad',
        "title": 'Salad',
        "icon_asset": 'assets/icons/body/popular/salad.svg',
        "icon_right_asset": iconRightAsset,
        "info": "Easy | 30mins | 180kCal",
      },
      {
        "key": 'salad',
        "title": 'Salad',
        "icon_asset": 'assets/icons/body/popular/salad.svg',
        "icon_right_asset": iconRightAsset,
        "info": "Easy | 30mins | 180kCal",
      },
    ];
  }

  static Map getPopularByKey(String key) {
    List<Map<String, String>> popularData = _popularData();

    return popularData.firstWhere((element) => element["key"] == key);
  }

  // TODO: этот код повторяется поэтому он может быть Родительским
  static List<Container> getPopular() {
    List<Container> popular = [];
    List<Color> listSequenceColors = [const Color(0xFF9CD6FF), const Color(0xFFE3D5FF)];
    List popularData = _popularData();

    for (final (index, popularDataElement) in popularData.indexed) {
      SvgPicture icon = SvgPicture.asset(popularDataElement["icon_asset"], width: 65, height: 65,);
      SvgPicture iconRight = SvgPicture.asset(popularDataElement["icon_right_asset"], width: 30, height: 30,);

      GestureDetector iconRightButton = GestureDetector(
        onTap: () {},
        child: iconRight,
      );

      int colorIndex = index % 2;

      // TODO: эту часть кода можно попробовать передавать уже готовой.
      //   что бы сделать его одинаковым полностью, под интерфейс
      Popular popularElement = Popular(
        title: popularDataElement["title"],
        info: popularDataElement["info"],
        icon: icon,
        iconRightButton: iconRightButton,
        boxColor: listSequenceColors[colorIndex],
      );

      Container popularContainer = _buildContainer(popularElement);
      popular.add(popularContainer);
    }

    return popular;
  }

  // TODO: этот код повторяется но не сильно, поэтому он может быть резализованным от Интерфейсна
  static _buildContainer(popularElement) {
    BoxDecoration activeDecoration = BoxDecoration(
      color: const Color(0xFFFFFFFF),// popularElement.boxColor,//.withValues(alpha: 0.3),
      borderRadius: BorderRadius.circular(16),
      boxShadow: const [BoxShadow(color: Color(0xFF7A7A7A), offset: Offset(0, 0), blurRadius: 40, spreadRadius: 0),],
    );

    popularElement.active = popularElement.title == 'Lowfat Milk' ? true : false;

    return Container( // Popular Item Box
      height: 100,
      decoration: popularElement.active ? activeDecoration : null,
      margin: const EdgeInsets.only(left: 20, right: 20,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          popularElement.icon,
          Column( // Title & Info
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text( // Tille
                textAlign: TextAlign.center,
                popularElement.title,
                style: const TextStyle(fontWeight: FontWeight.w600, color: Colors.black, fontSize: 16,),
              ),
              Text( // Info
                textAlign: TextAlign.center,
                popularElement.info,
                style: const TextStyle(fontWeight: FontWeight.w400, color: Color(0xFF929292), fontSize: 13,),
              ),
            ],
          ),
          // iconRightButton,
          popularElement.iconRightButton,
        ],
      ),
    );
  }
}
