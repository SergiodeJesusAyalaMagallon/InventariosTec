// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Socalicon extends StatelessWidget {
  final String iconsrc;
  final GestureTapCallback press;
  const Socalicon({
    Key? key,
    required this.iconsrc,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(15),
        decoration:
            BoxDecoration(color: kSecondaryBlack4B4, shape: BoxShape.circle),
        child: SvgPicture.asset(
          iconsrc,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
