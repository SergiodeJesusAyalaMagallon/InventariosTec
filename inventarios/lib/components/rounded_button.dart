// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventarios/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textcolor;
  final double tamano;
  final double radius;
  final double paddingV, paddingH;
  final double fontsize;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    required this.color,
    required this.textcolor,
    this.tamano = 0.85,
    this.radius = 15,
    this.paddingH = 40,
    this.paddingV = 0,
    this.fontsize = 18,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * tamano,
      padding: EdgeInsets.symmetric(vertical: paddingV, horizontal: paddingH),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: TextButton(
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
              color: textcolor, fontSize: fontsize, fontWeight: kmedium),
        ),
      ),
    );
  }
}
