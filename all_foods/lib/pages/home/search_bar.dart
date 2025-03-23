import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Container searchBar() {
  return Container(
    margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      boxShadow: const [
        BoxShadow(
          color: Color(0xffd1d1d1),
          offset: Offset(0, 3),
          blurRadius: 0.3,
          spreadRadius: -1,
          blurStyle: BlurStyle.normal,
        ),
      ],
    ),
    child: TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.all(15),
        hintText: 'search',
        hintStyle: const TextStyle(color: Color(0xC2CCCCCC), fontSize: 14,),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset("assets/icons/body/search_bar/zoom.svg"),
        ),
        suffixIcon: Container(
          width: 100,
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const VerticalDivider(
                  color: Color(0xFF000000),
                  indent: 10,
                  endIndent: 10,
                  thickness: 0.1,
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: SvgPicture.asset("assets/icons/body/search_bar/filter.svg"),
                ),
              ],
            ),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),
  );
}